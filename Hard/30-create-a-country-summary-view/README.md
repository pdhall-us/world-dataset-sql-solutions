# 30. Create a Country Summary View

**Solved ✓**

**Hard** · **Topics** · **Hints**

## SQL Schema

### Table: `country`

| Column Name | Type |
| --- | --- |
| Code | char(3) |
| Name | char(52) |
| Continent | enum |
| Region | char(26) |
| SurfaceArea | decimal(10,2) |
| IndepYear | smallint |
| Population | int |
| LifeExpectancy | decimal(3,1) |
| GNP | decimal(10,2) |
| GNPOld | decimal(10,2) |
| LocalName | char(45) |
| GovernmentForm | char(45) |
| HeadOfState | char(60) |
| Capital | int |
| Code2 | char(2) |

`Code` is the primary key.

`Capital` references `city.ID` and may be `NULL`.

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

### Table: `countrylanguage`

| Column Name | Type |
| --- | --- |
| CountryCode | char(3) |
| Language | char(30) |
| IsOfficial | enum |
| Percentage | decimal(4,1) |

`(CountryCode, Language)` is the primary key.

`CountryCode` references `country.Code`.

---

Write `CREATE VIEW country_summary AS ...` so the view returns one row per country: country name, population, city count, official-language count, and most populated city. The evaluator safely extracts and tests the `SELECT` portion without creating a persistent view.

Return the columns `CountryName`, `TotalPopulation`, `NumberOfCities`, `NumberOfOfficialLanguages`, `MostPopulatedCity`.

- Avoid count multiplication from joining two one-to-many tables.
- Countries with no cities remain.
- If largest cities tie, choose alphabetically first.
- Return the result ordered by `CountryName` ascending.

The result format is in the following example.

## Example 1

**Input:**

`country` table:

| Code | Name | Continent | Region | Population | SurfaceArea | Capital |
| --- | --- | --- | --- | ---: | ---: | ---: |
| AAA | Aster | Asia | East | 10000000 | 10000 | 2 |
| BBB | Birch | Asia | East | 8000000 | 50000 | 4 |
| CCC | Cedar | Europe | West | 600000001 | 20000 | 6 |
| DDD | Dune | Europe | West | 2000000 | 0 | null |
| EEE | Elm | Africa | South | 1000000 | 10000 | 7 |
| FFF | Fir | Africa | South | 0 | 50000 | null |
| GGG | Grove | Oceania | Pacific | 4000000 | 40000 | 9 |
| HHH | Haven | Oceania | Pacific | 2000000 | 10000 | null |
| IND | India | Asia | Southern Asia | 100000000 | 15000 | 14 |
| USA | United States | North America | North America | 300000000 | 50000 | 17 |

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

`countrylanguage` table:

| CountryCode | Language | IsOfficial | Percentage |
| --- | --- | --- | ---: |
| AAA | Hindi | T | 40 |
| AAA | Urdu | T | 40 |
| AAA | English | F | 10 |
| AAA | French | T | 10 |
| BBB | English | T | 50 |
| BBB | Hindi | F | 25 |
| BBB | Urdu | F | 25 |
| CCC | French | T | 25 |
| CCC | German | T | 25 |
| CCC | Italian | T | 25 |
| CCC | Spanish | T | 25 |
| EEE | Hindi | F | 100 |
| GGG | English | F | 50 |
| GGG | French | T | 50 |
| IND | Hindi | T | 50 |
| IND | Urdu | F | 20 |
| IND | English | F | 30 |
| USA | English | T | 90 |

**Output:**

| CountryName | TotalPopulation | NumberOfCities | NumberOfOfficialLanguages | MostPopulatedCity |
| --- | ---: | ---: | ---: | --- |
| Aster | 10000000 | 3 | 3 | Alpha |
| Birch | 8000000 | 2 | 1 | Birch Port |
| Cedar | 600000001 | 2 | 4 | Cedar Capital |
| Dune | 2000000 | 0 | 0 | null |
| Elm | 1000000 | 2 | 0 | Elm Capital |
| Fir | 0 | 1 | 0 | Zero |
| Grove | 4000000 | 2 | 1 | Grove Port |
| Haven | 2000000 | 0 | 0 | null |
| India | 100000000 | 2 | 1 | Mumbai |
| United States | 300000000 | 3 | 1 | Los Angeles |