import pandas as pd

df = pd.read_csv("data/upi_transaction_insights_dataset.csv")

print("Total Transactions:", len(df))

print("\nTransaction Success Rate:")
print(df["is_successful"].value_counts(normalize=True)*100)

print("\nPayment Mode Distribution:")
print(df["payment_mode"].value_counts())

print("\nMerchant Category Distribution:")
print(df["merchant_category"].value_counts())

print("\nAverage Transaction Amount:")
print(df["amount"].mean())
