import pandas as pd

# Load scorecard
scorecard = pd.read_csv("fund_scorecard.csv")

print("\nRisk Appetite Options:")
print("Low")
print("Moderate")
print("High")

risk = input("\nEnter Risk Appetite: ").strip().title()

# Filter by risk grade
recommend = (
    scorecard[
        scorecard["risk_grade"].str.strip().str.title() == risk
    ]
    .sort_values("sharpe_ratio_calc", ascending=False)
    .head(3)
)

print("\nTop 3 Recommended Funds\n")

print(
    recommend[
        [
            "scheme_name",
            "fund_house",
            "risk_grade",
            "return_3yr_pct",
            "sharpe_ratio_calc",
            "fund_score"
        ]
    ]
)

# Save output
recommend.to_csv(
    f"recommendation_{risk.lower()}.csv",
    index=False
)

print(
    f"\nRecommendation file saved as recommendation_{risk.lower()}.csv"
)