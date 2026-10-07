# 25. Rank Cities by Population Within Each Region

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

---

Rank cities by population within each region. Equal populations receive the same rank.

Return the columns `Region`, `CityName`, `CountryName`, `CityPopulation`, `PopulationRank`.

- Ranking restarts per `Region`.
- Use `RANK()` for ties.
- Return the result ordered by `Region` ascending, `PopulationRank` ascending, then `CityName` and `CountryName` ascending.

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

**Output:**

| Region | CityName | CountryName | CityPopulation | PopulationRank |
| --- | --- | --- | ---: | ---: |
| East | Alpha | Aster | 3000000 | 1 |
| East | Beta | Aster | 3000000 | 1 |
| East | Birch Port | Birch | 3000000 | 1 |
| East | Birch Capital | Birch | 1000000 | 4 |
| East | Small | Aster | 1000000 | 4 |
| North America | Los Angeles | United States | 5000000 | 1 |
| North America | San Diego | United States | 1000000 | 2 |
| North America | Washington | United States | 900000 | 3 |
| Pacific | Grove Port | Grove | 2000000 | 1 |
| Pacific | Grove Capital | Grove | 1000000 | 2 |
| South | Elm Capital | Elm | 600000 | 1 |
| South | Elm Port | Elm | 100000 | 2 |
| South | Zero | Fir | 0 | 3 |
| Southern Asia | Mumbai | India | 5000000 | 1 |
| Southern Asia | New Delhi | India | 4000000 | 2 |
| West | Cedar Capital | Cedar | 100 | 1 |
| West | Twin | Cedar | 100 | 1 |