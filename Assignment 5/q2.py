# Write a program to add a new column to a dataframe.

import pandas as pd

df = pd.DataFrame({
    'A' : ['Hi', 'Hello', 'Hola'],
    'B' : [1, 2, 3],
    'C' : [1.0, 2.0, 3.0]
})

print(f"Old Data Frame:\n{df}")

df['D'] = ['Yes', 'May be', 'No']

print(f"New Data Frame:\n{df}")

# Output
# Old Data Frame:
#        A  B    C
# 0     Hi  1  1.0
# 1  Hello  2  2.0
# 2   Hola  3  3.0
# New Data Frame:
#        A  B    C       D
# 0     Hi  1  1.0     Yes
# 1  Hello  2  2.0  May be
# 2   Hola  3  3.0      No