# Mobile Phone DBT Project
This is a project intended for learning DBT. 


## Objective
Determine the most cost-effective phone in the dataset based on targeted specifications.

## Installation
Python version:
Tested with python 3.12 

DBT Version:

Core:
  - installed: 1.5.0

Plugins:
  - duckdb: 1.5.0

## Usage

### Setup
Data needs to be brought into the database. The util script `utils/to_duckdb.py` will transfer data files in `raw` into a DuckDB database for DBT transformations.

### Regular Usage

To build the processed database, run the following:

```dbt run --profiles-dir=.dbt --profile=prod```

This will add tables to the DuckDB database in `data/mobile_devices.db`. The tables are defined in the `models/processed` and are documented in `docs/`

To test the processed database, run the following:

```dbt test --profiles-dir=.dbt --profile=prod```

This will test the tables in the DuckDB database to make sure they're structured as intended. Tests are defined in `models/processed/schema.yml`

### Target specifications
Targeted specifications can be modified inside the `dbt_project.yaml` file by changing the `tracked_specs` variable.

### SQL Linter
SQLFluff is used for linting in this repo
Config file `.sqlfluff`

#### Lint command
```sqlfluff lint```

#### Fix command
```sqlfluff fix```

Docs: https://docs.sqlfluff.com/en/3.0.0/configuration.html

## Data Credit
Dataset used in project:
https://www.kaggle.com/datasets/mbsoroush/mobile-price-range/data