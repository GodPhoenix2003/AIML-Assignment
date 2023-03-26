# Use pandas to identify the student who got lowest marks in more than 2 subjects.

import pandas as pd

df = pd.DataFrame({
    'Name' : ['Dean', 'Sam', 'Castiel', 'Jack'],
    'Sub1' : [79, 89, 95, 100],
    'Sub2' : [65, 79, 94, 99],
    'Sub3' : [56, 99, 89, 95],
})

num_sub = 2
min_marks = df.min()
num_lowest = (df == min_marks).sum(axis=1)
student = df['Name'][num_lowest > num_sub].tolist()
x = len(student)

if x == 1:
    print(f"Student who got the lowest in more than 2 subjects: {student}")
else:
    print("No student got the lowest marks.")

# Output
# Student who got the lowest in more than 2 subjects: ['Dean']