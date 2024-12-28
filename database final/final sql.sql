SELECT * FROM workout_data;

ALTER TABLE workout_data
ALTER COLUMN "Weight (kg)" 
SET DATA TYPE NUMERIC 
USING REPLACE("Weight (kg)", ',', '.')::NUMERIC; --a

ALTER TABLE workout_data
ALTER COLUMN "Age" SET DATA TYPE INT USING "Age"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "Height (m)"
SET DATA TYPE NUMERIC
USING REPLACE("Height (m)"::TEXT, ',', '.')::NUMERIC; --a


ALTER TABLE workout_data
ALTER COLUMN "Max_BPM" 
SET DATA TYPE INT 
USING NULLIF(REGEXP_REPLACE("Max_BPM", '[^\d]', '', 'g'), '')::INTEGER; --a



ALTER TABLE workout_data
ALTER COLUMN "Avg_BPM" SET DATA TYPE INT USING "Avg_BPM"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "Resting_BPM" SET DATA TYPE INT USING "Resting_BPM"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "Session_Duration (hours)" 
SET DATA TYPE NUMERIC 
USING REPLACE("Session_Duration (hours)", ',', '.')::NUMERIC; --a


ALTER TABLE workout_data
ALTER COLUMN "Calories_Burned" SET DATA TYPE INT USING "Calories_Burned"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "Fat_Percentage"
SET DATA TYPE NUMERIC
USING REPLACE("Fat_Percentage"::TEXT, ',', '.')::NUMERIC; --a

ALTER TABLE workout_data
ALTER COLUMN "Water_Intake (liters)"
SET DATA TYPE NUMERIC
USING REPLACE("Water_Intake (liters)"::TEXT, ',', '.')::NUMERIC; --a

ALTER TABLE workout_data
ALTER COLUMN "Workout_Frequency (days/week)" SET DATA TYPE INT USING "Workout_Frequency (days/week)"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "Experience_Level" SET DATA TYPE INT USING "Experience_Level"::INT; --a

ALTER TABLE workout_data
ALTER COLUMN "BMI"
SET DATA TYPE NUMERIC
USING REPLACE("BMI"::TEXT, ',', '.')::NUMERIC; --a

