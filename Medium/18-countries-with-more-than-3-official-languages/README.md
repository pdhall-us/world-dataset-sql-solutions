# 18. Countries With More Than 3 Official Languages

**Solved ✓**

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

Find countries having more than 3 official languages.

Return the columns `CountryName`, `NumberOfOfficialLanguages`.

- Count only `IsOfficial = 'T'`.
- Condition is strictly more than 3.
- Return the result ordered by `NumberOfOfficialLanguages` descending, then `CountryName` ascending.

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

| CountryName | NumberOfOfficialLanguages |
| --- | ---: |
| Cedar | 4 |