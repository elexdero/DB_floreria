# Flowers E commerce DB

If your user is ``postgres`` you can excecute de proyect using the following command:

1. Go to the scripts folder
2. Select the environment to which the database belongs: dev, qa, or prod.
3. Enter the selected folder, for example, the dev backups folder:

```
cd scripts/dev
```

4. Run the Postgres client, passing the build.sql file as an argument.

```
psql -U postgres -f build.sql
```

[!IMPORTANT]
Change `postgres` for your postgres user