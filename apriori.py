import pandas as pd
from mlxtend.preprocessing import TransactionEncoder
from mlxtend.frequent_patterns import apriori, association_rules

data = [
    ["Bread", "Milk", "Butter"],
    ["Bread", "Milk"],
    ["Bread", "Butter"],
    ["Milk", "Butter"],
    ["Bread", "Milk", "Butter"],
    ["Bread", "Eggs"],
    ["Milk", "Eggs"],
    ["Bread", "Milk", "Eggs"],
    ["Bread", "Butter", "Eggs"],
    ["Milk", "Butter"]
]

te = TransactionEncoder()
df = pd.DataFrame(te.fit(data).transform(data), columns=te.columns_)

freq = apriori(df, min_support=0.3, use_colnames=True)

rules = association_rules(
    freq, metric="confidence", min_threshold=0.6
)

print("Frequent Itemsets:\n")
print(freq)

print("\nAssociation Rules:\n")
print(rules[[
    "antecedents",
    "consequents",
    "support",
    "confidence",
    "lift"
]].round(2))
