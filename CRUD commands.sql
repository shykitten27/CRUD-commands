drop table seeds;

CREATE TABLE seeds (
   seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   crop VARCHAR(40),
   encourages VARCHAR(80),
   use_by INTEGER
);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Agastache", "bees & hummingbirds", 2020);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Morning Glory", "bees & hummingbirds", 2022);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Milkweed", "Monarch butterflies", 2023);

INSERT INTO seeds (crop, use_by)
VALUES ("Sun Gold Tomato", 2022);

INSERT INTO seeds (crop, encourages)
VALUES ("Strawberries", "Freezing & preserving");

select * from seeds;

select crop from seeds;

select crop, use_by from seeds
order by use_by desc, crop asc;

select * from seeds
where seed_id=3;

update seeds
set use_by = 2024
where seed_id=1;

select * from seeds;

update seeds
set encourages = "canning", use_by=2021
where seed_id=4;

select * from seeds;

alter table seeds
add expired boolean;

select * from seeds;

update seeds
set expired=1
where use_by <= 2021;

select * from seeds;

delete from seeds
where seed_id=1;

select * from seeds;

delete from seeds
where expired=1;

select * from seeds;

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Agastache", "bees & hummingbirds", 2020);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Morning Glory", "bees & hummingbirds", 2022);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Milkweed", "Monarch butterflies", 2023);

INSERT INTO seeds (crop, encourages, use_by)
VALUES ("Morning Glory", "bees & hummingbirds", 2022);

INSERT INTO seeds (encourages, use_by)
VALUES ("bees & hummingbirds", 2022);

select * from seeds;

select * from seeds 
where crop != "Agastache";

select * from seeds
where use_by = 2022 || use_by=2023;

select * from seeds
where crop is null AND expired is null;

select distinct crop, encourages, use_by  from seeds;

select * from seeds
