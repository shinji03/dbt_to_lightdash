SELECT
  order_id,
  PARSE_DATE('%Y/%m/%d', order_date) AS order_date,
  PARSE_DATE('%Y/%m/%d', shipping_date) AS shipping_date,
  shipping_mode,
  customer_id,
  customer_name,
  customer_type,
  city,
  prefectures,
  county,
  region,
  product_id,
  category,
  sub_category,
  product_name,
  sales,
  count,
  discount_rate,
  profit
FROM
  {{source("dbt_to_lightdash","sample_superstore")}}