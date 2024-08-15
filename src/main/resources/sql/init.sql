CREATE TABLE IF NOT EXISTS groups
(
    id   BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS students
(
    id            BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name          TEXT      NOT NULL,
    surname       TEXT      NOT NULL,
    date_of_birth TIMESTAMP NOT NULL,
    group_id      BIGINT NOT NULL,
    CONSTRAINT fk_group FOREIGN KEY (group_id) REFERENCES groups (id)
);
