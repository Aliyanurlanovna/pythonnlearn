from datetime import datetime

date1 = datetime(2024, 10, 1, 12, 0, 0)
date2 = datetime(2024, 9, 25, 10, 0, 0)

difference_in_seconds = (date1 - date2).total_seconds()

print("Difference between two dates in seconds:", difference_in_seconds)
