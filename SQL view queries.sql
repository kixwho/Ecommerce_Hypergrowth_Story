CREATE VIEW monthly_kpi_view AS
WITH payments_summary AS (
	SELECT
		order_id,
		SUM(payment_value) AS order_revenue
	FROM payments
	GROUP BY order_id
),
monthly_revenue AS (
	SELECT
		DATE_TRUNC('MONTH', o.order_purchase_timestamp) AS order_month,
		SUM(p.order_revenue) AS revenue
	FROM olist.orders o
	JOIN payments_summary p ON o.order_id=p.order_id
	WHERE o.order_status!='canceled'
	GROUP BY order_month
),
base AS (
	SELECT
		DATE_TRUNC('MONTH', o.order_purchase_timestamp) AS order_month,
		COUNT(DISTINCT c.customer_unique_id) AS customer_ct,
		COUNT(DISTINCT i.seller_id) AS seller_ct,
		COUNT(DISTINCT q.product_category_name) AS product_category_ct
	FROM olist.orders o
	JOIN olist.customers c ON o.customer_id=c.customer_id
	JOIN olist.order_items i ON o.order_id=i.order_id
	JOIN olist.products q ON i.product_id=q.product_id
	WHERE o.order_status!='canceled'
	GROUP BY order_month 
)
SELECT
	b.order_month,
	r.revenue,
	b.customer_ct,
	b.seller_ct,
	b.product_category_ct
FROM base b
JOIN monthly_revenue r ON b.order_month=r.order_month;


CREATE VIEW weekly_kpi_view AS
WITH base AS (
	SELECT
		date_trunc('WEEK', o.order_purchase_timestamp) AS order_week,
		p.payment_value,
		o.order_id,
		c.customer_unique_id	
	FROM olist.orders o
	JOIN olist.payments p ON o.order_id = p.order_id
	JOIN olist.customers c ON o.customer_id = c.customer_id
	WHERE o.order_status != 'canceled'
)
SELECT
	order_week,
	ROUND(SUM(payment_value) / COUNT(DISTINCT order_id), 2) AS AOV,
	ROUND(COUNT(DISTINCT order_id) *1.0 / COUNT(DISTINCT customer_unique_id), 2) AS orders_per_customer
FROM base
GROUP BY order_week
ORDER BY order_week;