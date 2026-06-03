
-- Query 1: Top 5 Fund Houses by AUM
SELECT fund_house,
SUM(aum_cr) AS total_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY total_aum DESC
LIMIT 5;

-- Query 2: Average NAV by Fund
SELECT amfi_code,
AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code;

-- Query 3: Top 10 Funds by 5Y Return
SELECT scheme_name,
return_5yr_pct
FROM fact_performance
ORDER BY return_5yr_pct DESC
LIMIT 10;

-- Query 4: Funds with Expense Ratio < 1%
SELECT scheme_name,
expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;

-- Query 5: Monthly SIP Trend
SELECT *
FROM fact_sip;

-- Query 6: Category-wise Inflows
SELECT category,
SUM(net_inflow_cr)
FROM fact_category_inflows
GROUP BY category;

-- Query 7: State-wise Transactions
SELECT state,
COUNT(*)
FROM fact_transactions
GROUP BY state;

-- Query 8: Risk Grade Distribution
SELECT risk_grade,
COUNT(*)
FROM dim_fund
GROUP BY risk_grade;

-- Query 9: Top Holdings
SELECT security_name,
holding_pct
FROM fact_portfolio_holdings
ORDER BY holding_pct DESC
LIMIT 10;

-- Query 10: Highest Benchmark Value
SELECT benchmark_name,
MAX(index_value)
FROM dim_benchmark
GROUP BY benchmark_name;
