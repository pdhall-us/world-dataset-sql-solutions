# 10. Average Population of All Cities

**Solved ✓**

**Easy** · **Topics** · **Hints**

## SQL Schema

### Table: `city`

| Column Name | Type |
| --- | --- |
| ID | int |
| Name | char(35) |
| CountryCode | char(3) |
| District | char(20) |
| Population | int |

`ID` is the primary key.

`CountryCode` references `country.Code`.

---

Find the average population of all cities.

Return the columns `AverageCityPopulation`.

- Calculate `AVG(city.Population)` across every city, without grouping by country.
- Round the returned average to 2 decimal places.
- Return `NULL` when the testcase has no cities.

The result format is in the following example.

## Example 1

**Input:**

`city` table:

| ID | Name | CountryCode | Population | District |
| ---: | --- | --- | ---: | --- |
| 1 | Alpha | AAA | 3000000 | |
| 2 | Beta | AAA | 3000000 | |
| 3 | Small | AAA | 1000000 | |
| 4 | Birch Capital | BBB | 1000000 | |
| 5 | Birch Port | BBB | 3000000 | |
| 6 | Cedar Capital | CCC | 100 | |
| 7 | Elm Capital | EEE | 600000 | |
| 8 | Grove Port | GGG | 2000000 | |
| 9 | Grove Capital | GGG | 1000000 | |
| 10 | Elm Port | EEE | 100000 | |
| 11 | Twin | CCC | 100 | |
| 12 | Zero | FFF | 0 | |
| 13 | Mumbai | IND | 5000000 | Maharashtra |
| 14 | New Delhi | IND | 4000000 | Delhi |
| 15 | Los Angeles | USA | 5000000 | California |
| 16 | San Diego | USA | 1000000 | California |
| 17 | Washington | USA | 900000 | District of Columbia |

**Output:**

| AverageCityPopulation |
| ---: |
| 1800011.76 |