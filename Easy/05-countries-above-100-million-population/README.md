# 5. Countries Above 100 Million Population

**Solved ✓**

**Easy** · **Topics** · **Hints**

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

Find countries with population more than 100 million.

Return the columns `CountryName`, `CountryPopulation`.

- Population must be strictly greater than `100,000,000`.
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

**Output:**

| CountryName | CountryPopulation |
| --- | ---: |
| Cedar | 600000001 |
| United States | 300000000 |