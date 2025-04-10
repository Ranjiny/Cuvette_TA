# Cuvette_TA
# 📊 Data Science & Analytics Assignment

Various tasks very assigned in different tools and the corresponding steps are summarized below The goal is to showcase skills in data handling, analysis, visualization, and using AI tools to enhance productivity.

---

## ✅ Section 1: Python + Machine Learning 

**Dataset:** Student Performance Dataset csv file was downloaded and place in the local.

### 🔧 Tasks:
- Load the dataset into dataframe using pd.read_csv and perform data cleaning. The data was spike and span hence no cleaning was required and initial level inspection was done.
-Additionally feature engineering was done to add the average score and status flag. I assumed the student passed only if the subject-wise scores and average scores were above 40%.
- Conducting exploratory data analysis (EDA) using `seaborn` and `matplotlib` for univariate and bivariate analysis shows the distribution of data and the trends.
- To predict whether a student will **pass or fail** based on scores and other features the data is divided into independent (X) and dependent(y) columns.Futher 20% of the data was reserved for testing purpose.
- Here **Logistic Regression** for classification and cross- validated to ensure model performs well across all the subsets of data.
- Later on the built model is Evaluate the model using:
  - Accuracy,precision,recall
  - Confusion Matrix
  - F1-Score
---

## ✅ Section 2: SQL 

**Dataset:** Chinook Database was loaded and the tables were created in SQLite Online.

### 🔧 Tasks:
- List the **top 5 customers** by total purchase amount: Inner joins were used to join customer and invoice table to get the total invoice amount customer-wise and the top 5 were picked
- Find the **most popular genre** by total tracks sold:  Inner joins were used to join Genre , Track and InvoiceLine .
- Retrieve all **employees who are managers** along with their subordinates: Self join of employee table.
- For each artist, find their **most sold album**:CRT was built with artist, album, track ,invoice and then ranked using row_number.
- Write a query to show **monthly sales trends** for the year 2013: Filter the data with the corresponding year and group the data usinf month to vie wthe sales trend.
_ (Note:No data was available for 2013, so 2021 data was used)

---

## ✅ Section 3: Tableau 

**Dataset:** Airbnb Listings in NYC was loaded into the tableau.

### 🔧 Tasks:
- Create a dashboard with: Separate worksheets are created for each of the following 
  - **Listings count by neighborhood** Drag and drop count(listings) and neighborhood to the columns and listing . optionally set the neighborhood group for colors.
  - **Price distribution per room type** Same as above corresponding fields are dragged and dropped
  - **Availability trends** used the last _reviewed date to capture the availability trend. Since this columns contains null values the rows are filtered to exclude the empty values.
- In the dashboard and these worksheets are included  **filters** for room type and neighborhood were added.
- **Publish**ed  the dashboard on Tableau Public.

## ✅ Section 4: Excel 

**Dataset:** Online Retail Dataset (UCI)

### 🔧 Tasks:
- Clean the data:- Removed nulls and duplicated values and special copied the values to a new sheet
- Select the entire data and inserted **Pivot Table** to show  Total sales by **country** and **month**
- Added formulas to calculate:
  - **Average order value**
  - **% contribution** of each country to total sales
- Highlighted **top 5 countries** by revenue using conditional formatting.
- Created a **chart** to visualize **monthly revenue trend**.
---
## ✅ Section 5: Bonus

Write a short reflection (~150 words):
- How would you explain a complex topic like **Gradient Descent** to beginners?
- Analogy
- Optimization
- Cost function

---

## ✅ Section 6: AI Tools & LLMs 

Demonstrate how you’ve used an AI-powered tool to assist with this assignment.

### 🧠 Option A: Prompt Engineering
- Use an LLM (e.g., ChatGPT) to assist with part of your work (e.g., EDA, SQL, Excel).
- Include:
  - The **prompt(s)** you used
  - The **AI’s response**
  - A brief reflection:
    - What did the AI do well?
    - What did you improve or customize?
-A text file is included for the above prompts and my thoughts
