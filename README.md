# 🌍 World Dataset SQL Problem Solving

A structured collection of my solutions to **World Dataset SQL problems**, focused on improving my understanding of **SQL concepts, database querying, problem-solving techniques, and query optimization**.

## 📊 Solution Summary

| **Difficulty** | **Solved** |
| -------------- | ---------- |
| 🟢 Easy | 10 |
| 🟡 Medium | 10 |
| 🔴 Hard | 10 |
| **Total** | **30** |

## 🧑‍💻 SQL Practice Environment

I developed a separate **LeetCode-inspired SQL practice application** to work through the same 30 World Dataset problems in an interactive environment.

### 🌐 [World SQL Practice](https://github.com/pdhall-us/world-sql-practice)

The application provides:

- **30 SQL Questions** — Easy, Medium, and Hard problems with schemas, examples, and hints.
- **Interactive MySQL Editor** — SQL syntax highlighting, autocomplete, and query formatting.
- **Automated Answer Validation** — Run queries and submit solutions against multiple test datasets.
- **Custom Test Cases** — Test SQL queries using custom input data.
- **Real MySQL Database** — Practice using the official World sample dataset.
- **Docker Support** — Run the application and database locally.

**Repository:** [pdhall-us/world-sql-practice](https://github.com/pdhall-us/world-sql-practice)

> This repository contains my SQL solutions, while **World SQL Practice** provides the interactive environment for solving and validating the same problems.

## 📚 Problems

### 🟢 Easy

| # | Problem | Topics | Solution |
| --- | --- | --- | --- |
| 1 | Countries in Asia | WHERE, ORDER BY | [View](Easy/01-countries-in-asia) |
| 2 | Top 5 Most Populated Cities | ORDER BY, LIMIT | [View](Easy/02-top-5-most-populated-cities) |
| 3 | Official Languages Spoken in Europe | JOIN, WHERE, DISTINCT, ORDER BY | [View](Easy/03-official-languages-spoken-in-europe) |
| 4 | Cities in India | JOIN, WHERE, ORDER BY | [View](Easy/04-cities-in-india) |
| 5 | Countries Above 100 Million Population | WHERE, ORDER BY | [View](Easy/05-countries-above-100-million-population) |
| 6 | Cities in California | WHERE, ORDER BY | [View](Easy/06-cities-in-california) |
| 7 | Number of Countries in Each Continent | COUNT, GROUP BY | [View](Easy/07-number-of-countries-in-each-continent) |
| 8 | 10 Smallest Countries by Surface Area | ORDER BY, LIMIT | [View](Easy/08-10-smallest-countries-by-surface-area) |
| 9 | Countries Where English Is Official | JOIN, WHERE, ORDER BY | [View](Easy/09-countries-where-english-is-official) |
| 10 | Average Population of All Cities | AVG, ROUND | [View](Easy/10-average-population-of-all-cities) |

### 🟡 Medium

| # | Problem | Topics | Solution |
| --- | --- | --- | --- |
| 11 | Top 3 Most Spoken Languages in Each Continent | JOIN, GROUP BY, SUM, RANK, Window Functions | [View](Medium/11-top-3-most-spoken-languages-in-each-continent) |
| 12 | Number of Cities in Each Country | LEFT JOIN, COUNT, GROUP BY, ORDER BY | [View](Medium/12-number-of-cities-in-each-country) |
| 13 | Official Language Is Not the Most Spoken Language | JOIN, MAX, Subquery, WHERE | [View](Medium/13-official-language-is-not-the-most-spoken-language) |
| 14 | Most Populated City in Each Country | JOIN, MAX, Subquery, ORDER BY | [View](Medium/14-most-populated-city-in-each-country) |
| 15 | Countries With No City Above One Million | NOT EXISTS, Subquery, WHERE, ORDER BY | [View](Medium/15-countries-with-no-city-above-one-million) |
| 16 | Total Population of Each Region | SUM, GROUP BY, ORDER BY | [View](Medium/16-total-population-of-each-region) |
| 17 | Countries by Surface Area and Population Density | WHERE, BETWEEN, NULLIF, ROUND, Arithmetic | [View](Medium/17-countries-by-surface-area-and-population-density) |
| 18 | Countries With More Than 3 Official Languages | JOIN, COUNT, GROUP BY, HAVING | [View](Medium/18-countries-with-more-than-3-official-languages) |
| 19 | Top 5 Countries by Number of Cities | JOIN, COUNT, GROUP BY, ORDER BY, LIMIT | [View](Medium/19-top-5-countries-by-number-of-cities) |
| 20 | Cities Above Their Country's Average City Population | JOIN, AVG, GROUP BY, Subquery, ROUND | [View](Medium/20-cities-above-their-countrys-average-city-population) |

### 🔴 Hard

| # | Problem | Topics | Solution |
| --- | --- | --- | --- |
| 21 | Continents With Large Population but No Official English | SUM, GROUP BY, HAVING, NOT EXISTS, Subquery | [View](Hard/21-continents-with-large-population-but-no-official-english) |
| 22 | Capital Below the Country's Average City Population | JOIN, AVG, GROUP BY, Subquery, ROUND | [View](Hard/22-capital-below-the-countrys-average-city-population) |
| 23 | Country-Wise Language Diversity Index | LEFT JOIN, COUNT DISTINCT, GROUP BY, ORDER BY | [View](Hard/23-country-wise-language-diversity-index) |
| 24 | World Population in Countries Where Hindi or Urdu Is Spoken | SUM, DISTINCT, Subquery, IN, ROUND | [View](Hard/24-world-population-in-countries-where-hindi-or-urdu-is-spoken) |
| 25 | Rank Cities by Population Within Each Region | JOIN, RANK, PARTITION BY, Window Functions | [View](Hard/25-rank-cities-by-population-within-each-region) |
| 26 | Top 5 Languages Globally by Estimated Speakers | JOIN, SUM, GROUP BY, Arithmetic, ROUND, LIMIT | [View](Hard/26-top-5-languages-globally-by-estimated-speakers) |
| 27 | Largest City Relative to Country Surface Area | JOIN, RANK, PARTITION BY, Arithmetic, Window Functions | [View](Hard/27-largest-city-relative-to-country-surface-area) |
| 28 | Top 10 Cities Where English Is Not Official | JOIN, NOT EXISTS, Subquery, ORDER BY, LIMIT | [View](Hard/28-top-10-cities-where-english-is-not-official) |
| 29 | Countries Where Two Cities Hold More Than 50% of Population | ROW_NUMBER, PARTITION BY, SUM, GROUP BY, HAVING | [View](Hard/29-countries-where-two-cities-hold-more-than-50-percent-of-population) |
| 30 | Create a Country Summary View | CREATE VIEW, LEFT JOIN, COUNT, Subquery, Aggregation | [View](Hard/30-create-a-country-summary-view) |

## 📁 Repository Structure

```text
world-dataset-sql-solutions/
│
├── Easy/
│   ├── 01-countries-in-asia/
│   │   ├── README.md
│   │   └── solution.sql
│   └── ...
│
├── Medium/
│   ├── 11-top-3-most-spoken-languages-in-each-continent/
│   │   ├── README.md
│   │   └── solution.sql
│   └── ...
│
├── Hard/
│   ├── 21-continents-with-large-population-but-no-official-english/
│   │   ├── README.md
│   │   └── solution.sql
│   └── ...
│
└── README.md
```

## 💻 Language

Primary language used for solving the problems in this repository:

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql&logoColor=white)

**MySQL**