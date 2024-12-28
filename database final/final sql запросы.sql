SELECT * FROM workout_data;

--1--
SELECT AVG("Age") AS AVG_Age
FROM workout_data;

--2--
SELECT "Gender", COUNT(*) AS User_Count
FROM workout_data
GROUP BY "Gender";

--3--
SELECT "Workout_Type", AVG("Avg_BPM") AS Avg_BPM, MAX("Max_BPM") AS Max_BPM
FROM workout_data
GROUP BY "Workout_Type";

--4--
SELECT "Experience_Level", AVG("Calories_Burned") AS Avg_Calories_Burned
FROM workout_data
GROUP BY "Experience_Level";

--5--
SELECT "Age", "Gender", "BMI", "Weight (kg)", "Height (m)"
FROM workout_data
WHERE "BMI" > 25;

--6--
SELECT "Workout_Frequency (days/week)", AVG("Session_Duration (hours)") AS Avg_Session_Duration
FROM workout_data
GROUP BY "Workout_Frequency (days/week)";

--7--
SELECT "Gender", AVG("Water_Intake (liters)") AS Avg_Water_Intake
FROM workout_data
GROUP BY "Gender";

--8--
SELECT "Fat_Percentage", AVG("Calories_Burned") AS Avg_Calories_Burned
FROM workout_data
GROUP BY "Fat_Percentage"
ORDER BY "Fat_Percentage";

--9--
SELECT "Age", "Gender", "Resting_BPM"
FROM workout_data
WHERE "Resting_BPM" < 60;

--10--
SELECT "Experience_Level", COUNT(*) AS User_Count
FROM workout_data
GROUP BY "Experience_Level";

--11--
SELECT "Workout_Type", AVG("Workout_Frequency (days/week)") AS Avg_Workout_Frequency
FROM workout_data
GROUP BY "Workout_Type";

--12--
SELECT "Age", "Gender", "Max_BPM"
FROM workout_data
WHERE "Max_BPM" > 180;

--13--
SELECT "Age", "Gender", "Workout_Frequency (days/week)"
FROM workout_data
WHERE "Workout_Frequency (days/week)" < 3;

--14--
SELECT "Fat_Percentage", AVG("BMI") AS Avg_BMI
FROM workout_data
GROUP BY "Fat_Percentage";

--15--
SELECT MAX("Calories_Burned") AS Max_Calories_Burned
FROM workout_data;

--16--
SELECT "Session_Duration (hours)", AVG("Calories_Burned") AS Avg_Calories_Burned FROM workout_data
GROUP BY "Session_Duration (hours)" 
ORDER BY "Session_Duration (hours)";

--17--
SELECT "Age", "Gender", "Fat_Percentage"
FROM workout_data WHERE "Fat_Percentage" > 30;

--18--
SELECT 
  CASE     
    WHEN "Age" < 18 THEN 'Under 18'
    WHEN "Age" BETWEEN 18 AND 30 THEN '18-30'    
	WHEN "Age" BETWEEN 31 AND 50 THEN '31-50'
    ELSE 'Above 50'  END AS "Age_Group",
  AVG("Avg_BPM") AS "Avg_BPM",  MAX("Max_BPM") AS Max_BPM
FROM workout_data GROUP BY "Age_Group";

--19--
SELECT "Gender", AVG("Weight (kg)") AS Avg_Weight, AVG("Height (m)") AS Avg_Height
FROM workout_data GROUP BY "Gender";

--20--
SELECT "Age", "Gender", "Workout_Frequency (days/week)"
FROM workout_data WHERE "Workout_Frequency (days/week)" > 1;

--21--
SELECT "Experience_Level", AVG("Session_Duration (hours)") AS Avg_Session_Duration
FROM workout_data 
GROUP BY "Experience_Level";

--22--
SELECT "Age", "Gender", "Water_Intake (liters)"
FROM workout_data WHERE "Water_Intake (liters)" < 2;

--23--
SELECT "Workout_Type", AVG("Calories_Burned") AS Avg_Calories_Burned
FROM workout_data 
GROUP BY "Workout_Type"
ORDER BY Avg_Calories_Burned DESC LIMIT 1;

--24--
SELECT "Age", "Gender", "Session_Duration (hours)"
FROM workout_data
ORDER BY "Session_Duration (hours)" DESC
LIMIT 10;

--25--
SELECT "Workout_Frequency (days/week)", AVG("Water_Intake (liters)") AS Avg_Water_Intake
FROM workout_data
GROUP BY "Workout_Frequency (days/week)"
ORDER BY "Workout_Frequency (days/week)";

--26--
SELECT "Age", "Gender", "Calories_Burned", "Workout_Type"
FROM workout_data
WHERE "Calories_Burned" < 1000;

--27--
SELECT "Experience_Level", MIN("BMI") AS Min_BMI
FROM workout_data
GROUP BY "Experience_Level"
ORDER BY Min_BMI;

--28--
SELECT  "Workout_Frequency (days/week)" AS Days_Per_Week,
  AVG("Avg_BPM") AS Avg_BPM
FROM workout_data
GROUP BY "Workout_Frequency (days/week)";

--29--
SELECT "Experience_Level", AVG("BMI") AS Avg_BMI
FROM workout_data
GROUP BY "Experience_Level";

--30--
SELECT "Age", "Gender", AVG("Calories_Burned") AS Avg_Calories_Burned
FROM workout_data
GROUP BY "Age", "Gender"
HAVING AVG("Calories_Burned") > 500;


