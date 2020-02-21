# PostgreSQL Docker Action

This [GitHub Action](https://github.com/features/actions) sets up a PostgreSQL database.
It utilizes the [PostgreSQL Docker](https://hub.docker.com/_/postgres) images.

**Note**: This is a fork from [here](https://github.com/hank-cp/postgresql-action), which is a fork from [here](https://github.com/danielweller-swp/postgresql-action), and originally created [here](https://github.com/Harmon758/postgresql-action).
It was first forked due to inactivity from the original maintainer.

## Usage

See [action.yml](action.yml).

Example:

```yaml
steps:
- uses: CasperWA/postgresql-action@v1.2
  with:
    postgresql version: '12'  # See https://hub.docker.com/_/postgres for available versions
    postgresql db: my_db
    postgresql init scripts: init-db/sql
    postgresql conf: max_prepared_transactions=100
    postgresql port: 2345
    postgresql auth: trust
```

## Inputs

### `postgresql version`

**Optional**: Version of PostgreSQL to use.  
**Default**: `latest`

### `postgresql db`

**Optional**: Name for the database that is created.  
**Default**: PostgreSQL default.

### `postgresql user`

**Optional**: Create the specified user with superuser power.  
**Default**: PostgreSQL default.

### `postgresql password`

**Optional**: Superuser password.  
**Default**: PostgreSQL default.

### `postgresql init scripts`

**Optional**: Relative path (from repository root) to directory containing database init scripts.  
**Default**: PostgreSQL default.

### `postgresql conf`

**Optional**: `postgres` configurations.  
**Default**: PostgreSQL default.

### `postgresql port`

**Optional**: Port to bind to the docker.
Also the port to be exposed by the docker.  
**Default**: `5432`

### `postgresql auth`

**Optional**: Set auth-method for host connections (see [PostgreSQL docs](https://www.postgresql.org/docs/current/auth-pg-hba-conf.html) under _**`auth-method`**_ for list of recognized values and their meaning).  
**Default**: PostgreSQL default.

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
