# Exploratory-analysis
data analysis and interpretation of R-outputs based on provided data


Regression Model Selection and Classification Analysis in R

Project Overview

This project demonstrates the application of regression modelling, model selection, cross-validation, and logistic classification using R. The analysis was completed as part of a statistical modelling assessment and uses built-in R datasets, including airquality and iris.

The project focuses on selecting appropriate predictive models, evaluating model assumptions, comparing performance metrics, and interpreting statistical outputs in a clear and practical way.

Analysis Objectives

The project includes two main analytical tasks:

1. Predict ozone concentration using weather-related variables from the airquality dataset.
2. Build and interpret a logistic classification model to predict whether an iris flower belongs to the virginica species.

Dataset 1: Air Quality Regression Analysis

The airquality dataset was used to predict ozone concentration using predictors such as:

* Solar radiation
* Wind speed
* Temperature
* Month
* Day

Missing values were removed before modelling to create a complete dataset for analysis.

Methods Used

* Data cleaning using na.omit
* Exploratory summary analysis
* Backward regression using regsubsets
* Multiple linear regression using lm
* Model refinement based on statistical significance
* Variance Inflation Factor checks for multicollinearity
* Residual diagnostics
* Leave-One-Out Cross-Validation
* Mean Squared Error comparison

Key Findings

The final recommended linear regression model used:

* Solar radiation
* Wind speed
* Temperature

as predictors of ozone concentration.

The model showed that temperature and solar radiation were positively associated with ozone concentration, while wind speed was negatively associated with ozone concentration. The model achieved an adjusted R-squared of approximately 0.59, indicating that the selected predictors explained a meaningful proportion of the variation in ozone levels.

Backward regression produced a lower Mean Squared Error than the cross-validation comparison in this analysis, supporting it as the preferred approach for the selected model.

Dataset 2: Iris Virginica Classification

The iris dataset was used to classify whether a flower belongs to the virginica species. A binary outcome variable was created:

* 1 = virginica
* 0 = not virginica

The analysis used logistic regression to estimate the probability and odds of a flower being virginica based on morphological features.

Methods Used

* Binary variable creation
* Probability calculation from observed class proportions
* Logistic regression modelling
* Model comparison using residual deviance and AIC
* Manual odds calculation from model coefficients
* Interpretation of model coefficients

Key Findings

The dataset contains equal representation of the three iris species, meaning the probability of randomly selecting a virginica flower is approximately 33.3%.

The recommended logistic model used selected flower measurements such as sepal width, petal length, and petal width to estimate the likelihood of a flower being virginica. Petal measurements were important predictors, showing that larger petal dimensions were strongly associated with the virginica class.

Technologies Used

* R
* RStudio
* Base R
* leaps
* car
* boot

Skills Demonstrated

* Statistical Modelling
* Linear Regression
* Logistic Regression
* Model Selection
* Cross-Validation
* Residual Analysis
* Multicollinearity Testing
* Model Interpretation
* Data Cleaning
* R Programming
* Statistical Reporting

Project Outcome

This project demonstrates practical statistical modelling skills using R, including how to clean data, select predictors, compare model performance, validate assumptions, and interpret regression outputs. It also shows the ability to communicate statistical results in a way that supports evidence-based decision-making.
