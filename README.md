# Olist Hypergrowth Story

# Executive Summary
Olist, a Brazilian e-commerce marketplace, achieved explosive growth in 2017. Revenue multiplied more than 100-fold on a yearly basis, with some months growing from almost no revenue a year ago to over 1M R$. **Olist won by scaling the marketplace, not by changing customer behavior**. On the ecosystem expansion side:
 * Active customers grew by thousands of times
 * Active sellers grew by hundreds of times
 * Product categories grew by tens of times

Yet on the customer behavior side, metrics such as Orders per Customer and Average order size remained largely constant. Even successful promotional events such as Black Friday 2017 failed to demonstrate durable growth.

## Ecosystem Expansion
<img width="1188" height="390" alt="image" src="https://github.com/user-attachments/assets/20a968e0-908e-4d3a-859e-84d159006a95" />

While the dataset does not allow rigorous analysis into causal attribution, the simultaneous expansion of the number of customers, sellers, and categories does suggest that marketplace scale was a dominant revenue growth driver. For instance, Olist differentiated itself to the sellers by providing a highly streamlined setup process, allowing small-to-medium businesses instant access to multiple retail channels that were previously harder to access. This strategy coincides with **durable seller growth** seen across the timeline.

A similar pattern is seen with product categories. Instead of specializing into key categories, Olist maintained a broad product offering across dispersed geography (see SQL Queries section for more).

## The Black Friday Effect
Frequently dicussed as a crucial growth driver, promotional/seasonal events such as 2017 Black Friday coincide with a sharp surge in revenue.

<img width="559" height="267" alt="image" src="https://github.com/user-attachments/assets/46e7ba19-255b-4acf-ae4a-8a68a4f6aa28" />

However, **customer behavior metrics** do not show a dramatic surge. Average order size in dollar amount peaked earlier that year in September. Orders per customer only fluctuated within a narrow band (IQR of 1.00 to 1.02), with one outlier dramatically outperforming in New Year's holiday week.

<img width="768" height="255" alt="image" src="https://github.com/user-attachments/assets/c707ce70-a4af-479c-b613-77c2ae5a5fff" />

## Conclusion
Olist's hypergrowth story centered around successful marketplace expansion. Revenue increased alongside rapid growth in active customers, sellers, and product categories, while core behavioral metrics such as orders per customer and average order size remained structurally stable throughout the period. This indicates that the primary driver of growth was scaling participation across the ecosystem, not increased purchasing intensity within users. Promotional events such as Black Friday generate sharp but short-lived revenue spikes, yet do not translate into durable shifts in customer behavior metrics.


### SQL Exploratory Analysis
<img width="521" height="358" alt="image" src="https://github.com/user-attachments/assets/89007f35-bb99-4f57-b902-788b04e94b4a" />

<br>

<img width="838" height="560" alt="image" src="https://github.com/user-attachments/assets/cf292022-103c-43bd-91d0-ec6df35477fd" />

<br>

<img width="651" height="613" alt="image" src="https://github.com/user-attachments/assets/ff63d1da-c370-43e7-b537-2b51ec1dc560" />

<br>

<img width="609" height="577" alt="image" src="https://github.com/user-attachments/assets/14302abf-0475-464e-8383-a97306f17e35" />

<img width="556" height="656" alt="image" src="https://github.com/user-attachments/assets/0dc50682-49a2-4e45-8606-c70701f8cf6c" />
