# Jewellery-ETL-Pipeline
A data engineering project that shows an ETL Pipeline for jewellery data from Kaggle into MySQL Server.

## 🧾 Overview

This project is an end-to-end **ETL (Extract, Transform, Load)** pipeline developed using **Python, Pandas, SQLAlchemy, and MySQL**. It processes and stores customer segmentation data from a **jewellery dataset** downloaded from Kaggle.

The project simulates how a **data engineer** would prepare raw customer data for analysis by cleaning and storing it into a structured MySQL database for further business intelligence or analytics.

---

## ⚙️ Tech Stack

- **Python** (Data wrangling, transformation, and logging)
- **Pandas** (Data manipulation)
- **SQLAlchemy** (Database connection and interaction)
- **MySQL** (Relational database)
- **Jupyter Notebooks** (Development environment)

---

## 📁 Project Structure

```
├── etl_pipeline.ipynb       # Main ETL code in Jupyter Notebook
├── logfile.txt              # Auto-generated log file for ETL events
├── README.md                # Project documentation
└── resources/               # Dataset reference and library links (optional)
```

---

## 📊 Dataset

**Name**: *Jewellery Customer Segmentation Analysis Personas*  
**Source**: [Kaggle](https://www.kaggle.com/)  
**File Format**: CSV  
**Fields Included**: Customer metrics like Acquisition Date, Spend, ROAS, Persona, etc.

---

## 🔁 ETL Process Breakdown

### ✅ 1. **Extract**

- Reads the CSV file from the local machine.
- Loads it into a Pandas DataFrame.

```python
dataset = pd.read_csv("path/to/your/csv")
```

---

### 🧹 2. **Transform**

- Drops irrelevant or redundant columns.
- Checks and handles:
  - Null values
  - Duplicate rows
- Verifies correct data types.

```python
cleaned_dataset = dataset.drop(columns=[...])
```

---

### 🗃️ 3. **Load**

- Connects to a local MySQL database using **SQLAlchemy**.
- Loads the cleaned dataset into a table named `cleaned_dataset`.

```python
cleaned_dataset.to_sql('cleaned_dataset', con=engine, if_exists='replace', index=False)
```

---

## 📝 Logging

A basic logging function tracks each ETL phase (Extraction, Transformation, and Loading) and writes a timestamped message to `logfile.txt`.

```python
def logging_message(Message):
    timestamp = datetime.now().strftime("%d-%m-%Y-%H:%M:%S")
    with open("logfile.txt", "a") as f:
        f.write(Message + " " + timestamp + '\n')
```

---

## 🔐 Setup & Usage

### 1. Clone the repository:
```bash
git clone https://github.com/yourusername/pandora-etl-pipeline.git
```

### 2. Install requirements:
```bash
pip install pandas sqlalchemy pymysql
```

### 3. Update MySQL credentials:
In the notebook, update:
```python
username = 'your_username'
password = 'your_password'
host = 'localhost'
database = 'your_database'
```

### 4. Run the Jupyter Notebook:
```bash
jupyter notebook
```

---

## 📚 Resources

- [Pandas Documentation](https://pandas.pydata.org/docs/reference/frame.html)
- [SQLAlchemy Docs](https://docs.sqlalchemy.org/en/20/)
- [Python `datetime`](https://docs.python.org/3/library/datetime.html#)

---

## 🧠 Author

**Katrina** – Data Engineering Enthusiast  


---
