drop table if exists countries cascade;
drop table if exists disciplines cascade;
drop table if exists atheletes cascade;
drop table if exists coaches cascade;

--COUNTRY--
CREATE TABLE countries (
  PRIMARY KEY (country_id),
  country_id VARCHAR NOT NULL,
  country_name VARCHAR NOT NULL
);

--DISCIPLINE--
CREATE TABLE disciplines (
  PRIMARY KEY (discipline_id),
  discipline_id VARCHAR NOT NULL,
	discipline VARCHAR NOT NULL
);

--ATHLETE--
CREATE TABLE atheletes (
  PRIMARY KEY (athelete_id),
  FOREIGN KEY (athelete_discipline_id) REFERENCES disciplines(discipline_id),
  FOREIGN KEY (athelete_country_id) REFERENCES countries(country_id),
  athelete_id VARCHAR NOT NULL,
  athelete_name VARCHAR NOT NULL,
  athelete_discipline_id VARCHAR NOT NULL,
  athelete_country_id VARCHAR NOT NULL
);

--COACHES--
CREATE TABLE coaches (
  PRIMARY KEY (coache_id),
  FOREIGN KEY (coache_discipline_id) REFERENCES disciplines(discipline_id),
  FOREIGN KEY (coache_country_id) REFERENCES countries(country_id),
  coache_id VARCHAR NOT NULL,
	coache_name VARCHAR NOT NULL,
  coache_discipline_id VARCHAR NOT NULL,
  coache_country_id VARCHAR NOT NULL
);