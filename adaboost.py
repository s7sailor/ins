import pandas as pd
from sklearn.model_selection import cross_val_score
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import AdaBoostClassifier

data = pd.DataFrame({
    "Glucose": [85, 90, 95, 100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150, 155, 160],
    "BMI": [22, 30, 24, 32, 26, 35, 28, 31, 25, 34, 29, 36, 27, 33, 30, 38],
    "Diabetes": [
        "No", "No", "No", "Yes", "No", "Yes", "No", "Yes",
        "No", "Yes", "Yes", "Yes", "No", "Yes", "Yes", "Yes"
    ]
})

X = data[["Glucose", "BMI"]]
y = data["Diabetes"]

weak = DecisionTreeClassifier(max_depth=1, random_state=42)
ada = AdaBoostClassifier(n_estimators=10, random_state=42)

w = cross_val_score(weak, X, y, cv=4)
a = cross_val_score(ada, X, y, cv=4)

print("Weak Classifier:", w)
print("Average Weak Classifier:", w.mean())

print("\nAdaBoost:", a)
print("Average AdaBoost:", a.mean())
