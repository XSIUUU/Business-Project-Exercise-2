# Business-Project-Exercise-2
Exercises focus on Data Merging, Aggregation, Filtering


# 🛫 NYC Flight Duration Analysis - 2022  

## 📄 Project Overview  
A foremost aviation industry player, with a significant presence in **New York City**, has launched an in-depth data analysis project to identify trends in flight durations. The main goal of this project is to optimize flight times and improve the overall passenger experience.  

As the **head data analyst**, the focus is on analyzing flight operations from datasets sourced from the `nycflights2022` collection (produced by the ModernDive team). This data covers flights departing from **JFK**, **LGA**, and **EWR** airports during the **second half of 2022**.

---

## 📊 Datasets  

1. **`flights2022-h2.csv`**  
   Contains detailed flight information.  

   | **Variable**  | **Description**                                       |
   |---------------|-------------------------------------------------------|
   | `carrier`     | Airline carrier code                                  |  
   | `origin`      | Origin airport (IATA code)                            |  
   | `dest`        | Destination airport (IATA code)                       |  
   | `air_time`    | Duration of the flight in air, in minutes             |  

2. **`airlines.csv`**  
   Provides information about airline carriers.  

   | **Variable**  | **Description**                                       |
   |---------------|-------------------------------------------------------|
   | `carrier`     | Airline carrier code                                  |  
   | `name`        | Full name of the airline                              |  

3. **`airports.csv`**  
   Offers details of various airports.  

   | **Variable**  | **Description**                                       |
   |---------------|-------------------------------------------------------|
   | `faa`         | FAA code of the airport                               |  
   | `name`        | Full name of the airport                              |  

---

## 🚀 Project Requirements  

1. **Frequent Airline and Airport Pair**  
   - Identify the **airline and destination airport pair** that receives the **most flights** from NYC.  
   - Compute the **average flight duration** for this pair.  
   - Save the result as a **data frame** named `frequent` with **one row** and at least two columns:  
     - `airline_name`  
     - `airport_name`  

2. **Longest Average Flight Duration**  
   - Find the **airport** that has the **longest average flight duration** (in hours) from NYC.  
   - Save the result as a **data frame** named `longest` with **one row** and at least two columns:  
     - `airline_name`  
     - `airport_name`  

3. **Least Frequented Destination from JFK**  
   - Determine the **least frequented destination** for flights departing from **JFK** airport.  
   - Save the result as a **character string** called `least`.  

---

## 🔍 Methodology  

The analysis will involve:  
1. **Data Merging**: Combining the `flights2022-h2.csv`, `airlines.csv`, and `airports.csv` datasets to get complete information.  
2. **Aggregation**: Calculating flight frequencies, average flight durations, and identifying required results.  
3. **Filtering**: Extracting specific answers based on NYC airports, particularly JFK.  

---

## 📁 Repository Contents  

| **File Name**              | **Description**                                                          |
|----------------------------|-------------------------------------------------------------------------|
| `README.md`                | Project overview, dataset description, and methodology.                 |
| `flight_analysis.R`        | R script implementing the analysis for the project requirements.        |

---

## 📌 Results  

1. **Frequent Airline and Airport Pair**:  
   - `frequent` dataframe contains the airline and airport pair with the most flights.  

2. **Longest Average Flight Duration**:  
   - `longest` dataframe identifies the airport with the longest average flight duration.  

3. **Least Frequented Destination from JFK**:  
   - `least` character string holds the name of the least frequented destination airport.  

---
