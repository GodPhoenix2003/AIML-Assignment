# Write a program using pandas to convert the datatype of a column of a dataframe.

import pandas as pd

df = pd.DataFrame({
    'A' : ['Hi', 'Hello', 'Hola'],
    'B' : [1, 2, 3],
    'C' : [1.0, 2.0, 3.0]
})

print(f"Before:\n{df}")

print(f"Unchange Data Type of column B: {df['B'].dtype}")
print(f"Unchange Data Type of column C: {df['C'].dtype}")

df['B'], df['C'] = df['B'].astype(float), df['C'].astype(int)

print(f"Modified Data Type of column B: {df['B'].dtype}")
print(f"Modified Data Type of column C: {df['C'].dtype}")

print(f"After:\n{df}")

# Before:
#        A  B    C
# 0     Hi  1  1.0
# 1  Hello  2  2.0
# 2   Hola  3  3.0
# Unchange Data Type of column B: int64
# Unchange Data Type of column C: float64
# Modified Data Type of column B: float64
# Modified Data Type of column C: int32
# After:
#        A    B  C
# 0     Hi  1.0  1
# 1  Hello  2.0  2
# 2   Hola  3.0  3
