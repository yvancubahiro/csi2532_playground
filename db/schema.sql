CREATE TABLE athletes(
    id int,
    name_athlete varchar(20),
    identified_gender varchar(1),
    dob date,
)

CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

ALTER TABLE atheltes RENAME COLUMN athlete_name TO name