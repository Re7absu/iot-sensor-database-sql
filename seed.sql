-- Load the CSV files in data/ into the tables created by schema.sql.
-- Run from the repository root with psql:  psql -d sensors -f seed.sql
-- Tables are loaded parent-first so every foreign key already exists.

\copy buildings (name, location) FROM 'data/buildings.csv' WITH (FORMAT csv, HEADER false);
\copy cameras (building_id, name, location) FROM 'data/cameras.csv' WITH (FORMAT csv, HEADER false);
\copy users (name, email) FROM 'data/users.csv' WITH (FORMAT csv, HEADER false);
\copy alerts (camera_id, message, type_message, message_at) FROM 'data/alerts.csv' WITH (FORMAT csv, HEADER false);
