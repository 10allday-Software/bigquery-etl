CREATE TABLE IF NOT EXISTS
  `moz-fx-data-marketing-prod.ga_derived.blogs_daily_summary_v1`(
    date DATE,
    device_category STRING,
    operating_system STRING,
    browser STRING,
    `language` STRING,
    country STRING,
    standardized_country_name STRING,
    source STRING,
    medium STRING,
    campaign STRING,
    content STRING,
    blog STRING,
    subblog STRING,
    sessions INT64,
    downloads INT64,
    social_share INT64,
    newsletter_subscription INT64
  )
PARTITION BY
  date
CLUSTER BY
  country,
  browser,
  blog,
  subblog
