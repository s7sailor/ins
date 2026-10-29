import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import BernoulliNB
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report

data = pd.DataFrame({
    "Fever": [1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1],
    "Cough": [1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0],
    "Headache": [1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1],
    "Disease": [
        "Flu", "Flu", "Cold", "Cold", "Flu", "Cold", "Flu", "Cold",
        "Flu", "Cold", "Flu", "Cold", "Cold", "Flu", "Cold", "Flu"
    ]
})

X = data[["Fever", "Cough", "Headache"]]
y = data["Disease"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.5, random_state=42, stratify=y
)

model = BernoulliNB()
model.fit(X_train, y_train)

pred = model.predict(X_test)

print("Classes:", model.classes_)
print("Accuracy:", accuracy_score(y_test, pred))

print("\nConfusion Matrix:")
print(confusion_matrix(y_test, pred))

print("\nClassification Report:")
print(classification_report(y_test, pred, zero_division=0))

print("\nClass Probabilities:")
print(model.predict_proba(X_test))

print("\n--- New Patient ---")
new = [[
    int(input("Fever (0=No, 1=Yes): ")),
    int(input("Cough (0=No, 1=Yes): ")),
    int(input("Headache (0=No, 1=Yes): "))
]]

print("\nPredicted Disease:", model.predict(new)[0])
print("Probabilities:", model.predict_proba(new)[0])
