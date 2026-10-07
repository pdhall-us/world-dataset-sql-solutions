# 28. Top 10 Cities Where English Is Not Official

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

Return the top 10 most populated cities whose country does not have English as an official language.

Return the columns `CityName`, `CountryName`, `Continent`, `CityPopulation`.

- Non-official English does not exclude a country.
- Sort population descending, then city name.
- Return the result ordered by `CityPopulation` descending, then `CityName` ascending, then `CountryName` ascending.

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

| CityName | CountryName | Continent | CityPopulation |
| --- | --- | --- | ---: |
| Mumbai | India | Asia | 5000000 |
| New Delhi | India | Asia | 4000000 |
| Alpha | Aster | Asia | 3000000 |
| Beta | Aster | Asia | 3000000 |
| Grove Port | Grove | Oceania | 2000000 |
| Grove Capital | Grove | Oceania | 1000000 |
| Small | Aster | Asia | 1000000 |
| Elm Capital | Elm | Africa | 600000 |
| Elm Port | Elm | Africa | 100000 |
| Cedar Capital | Cedar | Europe | 100 |