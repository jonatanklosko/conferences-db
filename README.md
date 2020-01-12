# conferences-db

A database project for DB classes, see [the docs](docs/docs.md) for detailed Polish documentation.

## Execution

Files ordered in the way they should be executed:

- `src/schema.sql` - the database schema
- `src/indices.sql` - additional indices boosting query performance
- `src/functions.sql`
- `src/views.sql`
- `src/procedures.sql`
- `src/triggers.sql`

## Example data

The project includes sample data generator (under `src/generator`).
To make things simple the repository includes an SQL file created by the generator,
so you can just execute `src/generator/baza.sql` to fill the database.
