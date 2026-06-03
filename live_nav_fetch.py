import requests
import pandas as pd

url = "https://api.mfapi.in/mf/118223"

response = requests.get(url)

if response.status_code == 200:

    data = response.json()

    print("Scheme Name:")
    print(data["meta"]["scheme_name"])

    nav_df = pd.DataFrame(data["data"])

    nav_df.to_csv(
        "Data/Raw/SBI_Bluechip_NAV.csv",
        index=False
    )

    print("NAV data saved successfully!")

else:
    print("API Error:", response.status_code)