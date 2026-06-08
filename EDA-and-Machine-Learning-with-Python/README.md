Housing Price Analysis: Exploratory Data Analysis (EDA) and Machine Learning with Python

Project Overview

This project explores the Boston Housing dataset through comprehensive Exploratory Data Analysis (EDA) and Machine Learning techniques using Python. The objective is to understand the relationships between housing features and property values, identify key factors influencing house prices, and develop predictive models capable of estimating housing values accurately.

The project follows a complete data science workflow, from data exploration and visualization to model development, hyperparameter tuning, evaluation, and feature importance analysis.

Objectives

* Perform exploratory data analysis to understand the dataset.

* Identify patterns, trends, and relationships between housing features and property values.

* Create meaningful visualizations to support insights.

* Build and compare multiple machine learning models.

* Optimize model performance using hyperparameter tuning.

* Evaluate model accuracy using appropriate metrics.

* Determine the most influential features affecting house prices.

Dataset Description

The dataset contains housing-related attributes such as:

Feature	                      Description

CRIM	                      Per capita crime rate

ZN	                        Residential land zoned for large lots

INDUS	                      Proportion of non-retail business acres

CHAS	                      Charles River dummy variable

NOX	                        Nitric oxide concentration

RM	                        Average number of rooms per dwelling

AGE	                        Proportion of owner-occupied units built before 1940

DIS	                        Distance to employment centers

RAD	                        Accessibility to radial highways

TAX	                        Property tax rate

PTRATIO	                    Pupil-teacher ratio

LSTAT	                      Percentage of lower-status population

MEDV	                      Median value of owner-occupied homes

Additional engineered categorical features were created during analysis, including:

* Crime Level

* House Value Category

* LSTAT Level

Exploratory Data Analysis (EDA)

A. Data Understanding

The analysis began with:

* Inspecting dataset structure

* Reviewing data types

* Checking for missing values

* Generating descriptive statistics

B. Distribution Analysis

The distribution of housing prices (MEDV) was examined using histograms to understand:

* Central tendency

* Spread

* Skewness

* Presence of outliers

C. Feature Relationships

Several visualizations were used to uncover relationships:

1. House Value vs Crime Level

A grouped bar chart revealed that:

* High-value homes are generally located in lower-crime areas.

* Areas with high crime rates tend to contain fewer expensive properties.

2. House Value vs Number of Rooms

A scatter plot demonstrated a strong positive relationship between:

* Average number of rooms (RM)

* Median house value (MEDV)

This indicates that houses with more rooms generally command higher prices.

3. Socioeconomic Analysis

Comparisons involving LSTAT (percentage of lower-status population) showed:

* Higher LSTAT values are associated with lower housing prices.

* Neighborhood socioeconomic conditions significantly impact property values.

4. Correlation Analysis

A correlation heatmap was generated to identify:

* Strong positive correlations

* Strong negative correlations

* Potential multicollinearity among variables

Key findings included:

* RM positively correlates with MEDV.

* LSTAT negatively correlates with MEDV.

* Crime rate and pollution indicators generally show negative relationships with property values.

Machine Learning Implementation

I. Data Preparation

Steps performed:

* Feature selection

* Categorical variable encoding

* Train-test split

* Data preprocessing

Dataset was divided into:

* Training Set (80%)

* Testing Set (20%)

II. Models Developed

Three machine learning algorithms were implemented and compared:

1. K-Nearest Neighbors (KNN)

Used as a baseline model to classify housing value categories based on feature similarity.

2. Logistic Regression

Applied for classification tasks involving categorized housing values.

3. Random Forest

Implemented for both classification and regression analysis due to its robustness and ability to capture complex feature interactions.

III. Model Comparison

The models were evaluated using accuracy scores.

Results showed:

* Random Forest achieved the highest performance.

* Logistic Regression produced competitive results.

* KNN provided reasonable baseline performance.

A model comparison chart was created to visualize performance differences.

IV. Hyperparameter Tuning

a. KNN Optimization

Different values of K were tested to determine the optimal number of neighbors.

The tuning process included:

* Training accuracy evaluation

* Testing accuracy evaluation

* Performance visualization

The optimal K value was selected based on the highest test accuracy.

b. Random Forest Optimization

GridSearchCV was used to tune:

* Number of estimators

* Maximum depth

* Minimum samples split

* Minimum samples leaf

The best-performing parameter combination was selected automatically through cross-validation.

V. Model Evaluation

The Random Forest Regressor was selected as the final predictive model.

VI. Evaluation Metrics

a. R² Score

Measures the proportion of variance explained by the model.

b. Mean Absolute Error (MAE)

Measures the average magnitude of prediction errors.

c. Root Mean Squared Error (RMSE)

Provides insight into prediction error severity.

VII. Evaluation Visualizations

1. Actual vs Predicted Values

A scatter plot compared actual house values against predicted values.

Observation:

* Most points clustered around the diagonal reference line.

* Indicates strong predictive performance.

2. Residual Plot

Residuals were plotted against predicted values.

Observation:

* Errors were randomly distributed around zero.

* No major patterns suggesting model bias.

3. Error Distribution

A histogram of residuals showed:

* Most prediction errors concentrated near zero.

* Approximate normal distribution of residuals.

VIII. Feature Importance Analysis

Two approaches were used:

a. Random Forest Feature Importance

Random Forest identified the most influential variables affecting house prices.

Top contributors included:

* RM (Number of Rooms)

* LSTAT

* DIS

* PTRATIO

* NOX

b. Ridge Regression Coefficients

Ridge Regression coefficients were analyzed to understand:

* Positive feature influence

* Negative feature influence

* Relative contribution of each variable

This provided an interpretable view of feature effects on housing prices.

Technologies Used

* Python

* Pandas

* NumPy

* Matplotlib

* Seaborn

* Scikit-Learn

* GridSearchCV

Key Insights

* Houses with more rooms tend to have higher market values.

* Neighborhood socioeconomic status significantly affects housing prices.

* Higher crime rates are associated with lower-valued homes.

* Random Forest outperformed other evaluated models.

* Feature importance analysis confirmed that room count and socioeconomic indicators are among the strongest drivers of house prices.

Future Improvements

* Test additional ensemble models such as XGBoost and Gradient Boosting.

* Apply advanced feature engineering techniques.

* Perform feature selection to reduce model complexity.

* Explore deep learning approaches for regression tasks.

* Deploy the model as a web application using Flask or Streamlit.
