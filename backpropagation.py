import numpy as np


class NeuralNetwork:
    def __init__(self):
        np.random.seed(1)
        self.weights = 2 * np.random.random((3, 1)) - 1

    def sigmoid(self, x):
        return 1 / (1 + np.exp(-x))

    def train(self, X, y, iterations=15000):
        for _ in range(iterations):
            output = self.think(X)
            error = y - output
            self.weights += np.dot(
                X.T, error * output * (1 - output)
            )

    def think(self, X):
        return self.sigmoid(np.dot(X, self.weights))


nn = NeuralNetwork()
print("Beginning Random Weights:")
print(nn.weights)

X = np.array([
    [0, 0, 0], [0, 0, 1], [0, 1, 0], [0, 1, 1],
    [1, 0, 0], [1, 0, 1], [1, 1, 0], [1, 1, 1]
])

y = np.array([
    [0], [0], [0], [0],
    [1], [1], [1], [1]
])

nn.train(X, y)
print("\nEnding Weights:")
print(nn.weights)

a = float(input("\nInput 1: "))
b = float(input("Input 2: "))
c = float(input("Input 3: "))

prediction = nn.think(np.array([a, b, c]))
print("\nPrediction:")
print(prediction)
print("Predicted Output =", 1 if prediction > 0.5 else 0)
