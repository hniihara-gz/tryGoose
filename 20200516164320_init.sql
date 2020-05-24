-- +goose Up
-- +goose StatementBegin
create table IF NOT EXISTS  users (
    id bigint NOT NULL PRIMARY KEY ,
    name varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE users;
-- +goose StatementEnd
