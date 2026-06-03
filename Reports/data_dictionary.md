
# Data Dictionary

## dim_fund

| Column | Type | Description |
|----------|----------|----------|
| amfi_code | INTEGER | Mutual fund code |
| scheme_name | TEXT | Fund scheme name |
| fund_house | TEXT | AMC name |

## fact_nav

| Column | Type | Description |
|----------|----------|----------|
| amfi_code | INTEGER | Fund code |
| date | DATE | NAV date |
| nav | REAL | Net Asset Value |

## fact_transactions

| Column | Type | Description |
|----------|----------|----------|
| investor_id | INTEGER | Investor ID |
| transaction_type | TEXT | SIP/Lumpsum/Redemption |
| amount | REAL | Transaction amount |
