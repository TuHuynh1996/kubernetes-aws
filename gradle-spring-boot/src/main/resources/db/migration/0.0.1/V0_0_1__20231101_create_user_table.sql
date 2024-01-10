CREATE TABLE public.users
(
    id            uuid NOT NULL,
    name          varchar(225) NULL,
    phone_number  varchar(225) NULL,
    date_of_birth timestamp NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);