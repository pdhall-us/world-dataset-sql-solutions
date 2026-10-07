# 17. Countries by Surface Area and Population Density

**Medium** · **Topics** · **Hints**

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

---

List countries with surface area between 10,000 and 50,000 km² inclusive and population density greater than 100. Density = Population / SurfaceArea.

Return the columns `CountryName`, `SurfaceArea`, `Population`, `PopulationDensity`.

- Protect against division by zero.
- Density must be strictly greater than 100.
- Return the result ordered by `PopulationDensity` descending, then `CountryName` ascending.
- Round calculated decimal output columns to 2 decimal places; use unrounded values for filtering and ranking unless stated otherwise.

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

**Output:**

| CountryName | SurfaceArea | Population | PopulationDensity |
| --- | ---: | ---: | ---: |
| Cedar | 20000 | 600000001 | 30000 |
| India | 15000 | 100000000 | 6666.67 |
| United States | 50000 | 300000000 | 6000 |
| Aster | 10000 | 10000000 | 1000 |
| Haven | 10000 | 2000000 | 200 |
| Birch | 50000 | 8000000 | 160 |