create table if not exists capital
(
    id int auto_increment primary key,
    alpha_2 varchar(2),
    name text
);

create table if not exists continent
(
    id int auto_increment primary key,
    city_alpha_2 varchar(2),
    continent_alpha_2 varchar(2)
);

create table if not exists countries_of_the_world
(
    id int auto_increment primary key,
    country varchar(255),
    region varchar(255),
    population int,
    area int,
    pop_density decimal(5,3),
    coastline decimal(5,3),
    net_migration decimal(5,3),
    infant_mortality decimal(5,3),
    gpd int,
    literacy decimal(5,3),
    phones decimal(5,3),
    arable decimal(5,3),
    crops decimal(5,3),
    other decimal(5,3),
    climate int,
    birthrate decimal(5,3),
    deathrate decimal(5,3),
    agriculture decimal(5,3),
    industry decimal(5,3),
    service decimal(5,3)
);

create table if not exists currency
(
    id int auto_increment primary key,
    country_alpha_2 varchar(2),
    currency_alpha_3 varchar(3)
);

create table if not exists iso3
(
    id int auto_increment primary key,
    alpha_2 varchar(2),
    alpha_3 varchar(3)
);

create table if not exists names
(
    id int auto_increment primary key,
    alpha_2 varchar(2),
    country varchar(255)
);

create table if not exists nobel_laureates
(
    id Integer auto_increment primary key,
    year int,
    category varchar(255),
    prize varchar(255),
    motivation text,
    prize_share decimal,
    laureate_type varchar(255),
    full_name varchar(255),
    birth_date date,
    birth_city varchar(255),
    birth_country varchar(255),
    sex varchar(255),
    organization_name varchar(255),
    organization_city varchar(255),
    organization_country varchar(255),
    death_date date,
    death_city varchar(255),
    death_country varchar(255)
);

create table if not exists phone
(
    id int auto_increment primary key,
    country_alpha_2 varchar(2),
    code varchar(255)
);

create table if not exists worldcitiespop
(
    id int auto_increment primary key,
    country_alpha_2 varchar(2),
    city varchar(255),
    accent_city varchar(255),
    region varchar(255),
    population decimal(20, 20),
    latitude decimal(20, 20),
    longitude decimal(20, 20)
);
