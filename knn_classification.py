import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score

data = pd.DataFrame({
    "X1": [1, 2, 3, 6, 7, 8, 2, 7],
    "X2": [2, 3, 3, 7, 8, 7, 1, 6],
    "Class": ["A", "A", "A", "B", "B", "B", "A", "B"]
})

X, y = data[["X1", "X2"]], data["Class"]

Xtr, Xte, ytr, yte = train_test_split(
    X, y, test_size=0.25, random_state=42
)

model = KNeighborsClassifier(n_neighbors=3)
model.fit(Xtr, ytr)

pred = model.predict(Xte)

print("Accuracy:", accuracy_score(yte, pred))
print("Predictions:", pred)

print("Predicted Class:", model.predict([[4, 4]])[0])

for c, col in {"A": "blue", "B": "red"}.items():
    p = data[data.Class == c]
    plt.scatter(p.X1, p.X2, c=col, label="Class " + c)

plt.scatter(4, 4, c="green", marker="*", s=200, label="New Point")
plt.xlabel("Feature 1")
plt.ylabel("Feature 2")
plt.title("K-NN Classification")
plt.legend()
plt.grid()
plt.show()
