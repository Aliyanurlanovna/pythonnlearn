from datetime import datetime

current_date = datetime.now()

current_date_without_microseconds = current_date.replace(microsecond=0)

print("Date with microseconds:", current_date)
print("Date without microseconds:", current_date_without_microseconds)
