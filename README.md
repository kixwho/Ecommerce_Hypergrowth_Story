# Olist Hypergrowth Story

# Executive Summary
Olist, a Brazilian e-commerce marketplace, achieved explosive growth in 2017. Revenue multiplied more than 100-fold on a yearly basis, with some months growing from almost no revenue a year ago to over 1M R$. **Olist won by scaling the marketplace, not by changing customer behavior**. On the ecosystem expansion side:
 * Active customers grew by thousands of times
 * Active sellers grew by hundreds of times
 * Product categories grew by tens of times

Yet on the customer behavior side, metrics such as Orders per Customer and Average order size remained largely constant. Even successful promotional events such as Black Friday 2017 fail to demonstrate durable growth.

## Ecosystem Expansion
<img width="1188" height="390" alt="image" src="https://github.com/user-attachments/assets/20a968e0-908e-4d3a-859e-84d159006a95" />

While the dataset does not allow rigorous analysis into causal attribution, the simultaneous expansion of the sheer number of customers, sellers, and categories does suggest that marketplace scale was a dominant revenue growth driver. For instance, Olist differentiated itself to the sellers by providing a highly streamlined setup process, allowing small-to-medium businesses instant access to multiple retail channels that were previously harder to access. This strategy coincides with **durable seller growth** seen across the timeline.

A similar pattern is seen with product categories. Instead of specializing into key categories, Olist maintained a **broad product offering** across dispersed geography (see SQL Queries section for more).

## The Black Friday Effect
<img width="559" height="267" alt="image" src="https://github.com/user-attachments/assets/46e7ba19-255b-4acf-ae4a-8a68a4f6aa28" />

Frequently dicussed as a crucial growth driver, promotional/seasonal events such as Black Friday coincide with sharp surge in revenue.

<img width="739" height="255" alt="image" src="https://github.com/user-attachments/assets/3f350cbe-abeb-4daf-8aa6-546245a41082" />

Customer behavior metrics actually do not show a dramatic surge. Average order size in dollar amount peaked earlier that year in September. Orders per customer only fluctuated within a narrow band (IQR of 1.00 to 1.02), with one outlier dramatically outperforming in New Year's holiday week.

<img width="742" height="255" alt="image" src="https://github.com/user-attachments/assets/55bef47b-6469-4e00-9d10-18422485269a" />


### 1. Total Revenue
<img width="521" height="358" alt="image" src="https://github.com/user-attachments/assets/89007f35-bb99-4f57-b902-788b04e94b4a" />

<br>

### 2. Year-over-Year (YoY) revenue growth <p></p>
<img width="838" height="560" alt="image" src="https://github.com/user-attachments/assets/cf292022-103c-43bd-91d0-ec6df35477fd" />

<br>

### 3. Hypergrowth phase <p></p>
<img width="651" height="613" alt="image" src="https://github.com/user-attachments/assets/ff63d1da-c370-43e7-b537-2b51ec1dc560" />

#### Insights:
After normalizing for partial year data, Q4 shows consistent YoY growth, suggesting that the apparent revenue jump is driven by underlying business expansion rather than a one-time anomaly.

<br>

### 4. Revenue by Product Categories <p></p>
<img width="609" height="577" alt="image" src="https://github.com/user-attachments/assets/14302abf-0475-464e-8383-a97306f17e35" />

### 5. Revenue by City <p>
<img width="556" height="656" alt="image" src="https://github.com/user-attachments/assets/0dc50682-49a2-4e45-8606-c70701f8cf6c" />

#### Insights:
* Top 5 cities only account for ~27% of total revenue → Revenue is dispersed
    
* Rank by orders match rank by revenue → Order volume ~ revenue power
#### Strategy implication:
Revenue is not geographically concentrated. Top 5 cities contribute 27% of total revenue, indicating a long-tail demand distribution rather than reliance on a few key hubs. This points to a more resilient revenue base and growth opportunities may lie in scaling broadly across regions.
