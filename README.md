# PostgreSQL GitHub Action

This [GitHub Action](https://github.com/features/actions) sets up a PostgreSQL database.

**Note**: This is a fork from [here](https://github.com/hank-cp/postgresql-action), which is a fork from [here](https://github.com/danielweller-swp/postgresql-action), and originally created [here](https://github.com/Harmon758/postgresql-action).
It was first forked due to inactivity from the original maintainer.

## Usage

See [action.yml](action.yml)

Basic:

```yaml
steps:
- uses: CasperWA/postgresql-action@v1.1
  with:
    postgresql version: '11'  # See https://hub.docker.com/_/postgres for available versions
    postgresql init scripts: 'init-db'
    postgresql conf: 'max_prepared_transactions=100'
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
