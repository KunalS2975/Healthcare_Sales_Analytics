import streamlit as st
import pandas as pd
import joblib

st.set_page_config(
    page_title="Healthcare Sales Prediction",
    page_icon="📊",
    layout="wide"
)

st.title("🏥 Healthcare Sales Prediction System")

st.write(
    """
    This application predicts pharmaceutical sales using a trained
    Random Forest Regression model.
    """
)

df = pd.read_csv("data/pharma-data.csv")

st.subheader("Dataset Overview")

st.write(f"Number of Records: {df.shape[0]}")
st.write(f"Number of Columns: {df.shape[1]}")

st.subheader("Dataset Preview")

st.dataframe(df.head(10))

# Load trained model
model = joblib.load("models/sales_prediction_model.pkl")

st.subheader("📈 Model Performance")

col1, col2, col3 = st.columns(3)

col1.metric("R² Score", "0.9843")
col2.metric("MAE", "901.44")
col3.metric("RMSE", "40631.84")

st.subheader("🔮 Sales Predictions")

features = [
    "Distributor",
    "Customer Name",
    "City",
    "Country",
    "Channel",
    "Sub-channel",
    "Product Name",
    "Product Class",
    "Quantity",
    "Price",
    "Month",
    "Year",
    "Name of Sales Rep",
    "Manager",
    "Sales Team"
]

predictions = model.predict(df[features])

results = df.copy()

results["Predicted Sales"] = predictions

st.dataframe(
    results[
        [
            "Product Name",
            "Customer Name",
            "Sales",
            "Predicted Sales"
        ]
    ].head(20)
)

csv = results.to_csv(index=False).encode("utf-8")

st.download_button(
    label="📥 Download Predictions",
    data=csv,
    file_name="sales_predictions.csv",
    mime="text/csv"
)