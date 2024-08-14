CREATE TABLE groups
(
    id   BIGINT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE students
(
    id            BIGINT PRIMARY KEY NOT NULL,
    name          TEXT      NOT NULL,
    surname       TEXT      NOT NULL,
    date_of_birth TIMESTAMP NOT NULL,
    CONSTRAINT fk_group FOREIGN KEY (group_id) REFERENCES groups (id)
);
