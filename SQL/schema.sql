
CREATE TABLE dim_fund (
    amfi_code INTEGER PRIMARY KEY,
    scheme_name TEXT,
    fund_house TEXT
);

CREATE TABLE fact_nav (
    amfi_code INTEGER,
    nav_date DATE,
    nav REAL
);

CREATE TABLE fact_aum (
    fund_house TEXT,
    month DATE,
    aum_cr REAL
);

CREATE TABLE fact_sip_inflows (
    month DATE,
    sip_inflow_cr REAL
);

CREATE TABLE fact_category_inflows (
    category TEXT,
    month DATE,
    inflow_cr REAL
);

CREATE TABLE fact_folio_count (
    category TEXT,
    month DATE,
    folio_count INTEGER
);

CREATE TABLE fact_portfolio_holdings (
    amfi_code INTEGER,
    security_name TEXT,
    sector TEXT,
    holding_pct REAL
);

CREATE TABLE dim_benchmark (
    benchmark_name TEXT,
    benchmark_date DATE,
    index_value REAL
);
