CREATE TABLE PetLicenses(issue_date varchar(255), license_number int,
			pet_name varchar(255), species varchar(32), primary_breed varchar(32),
			secondary_breed varchar(32), zip_code int);

.separator ,
.import Seattle_Pet_Licenses.csv PetLicenses

select distinct species from petlicenses;
--Dog, Cat, Pig, Goat


--Ravenna Data
--[3111,1626,2,5,4744]
select count(*) from petlicenses where zip_code = 98115 AND species = 'Dog';
--3111
select count(*) from petlicenses where zip_code = 98115 AND species = 'Cat';
--1626
select count(*) from petlicenses where zip_code = 98115 AND species = 'Pig';
--2
select count(*) from petlicenses where zip_code = 98115 AND species = 'Goat';
--5
--tot 4744

--Greenlake Data
--[2845,1655,0,0, 4500]
select count(*) from petlicenses where zip_code = 98103 AND species = 'Dog';
--2845
select count(*) from petlicenses where zip_code = 98103 AND species = 'Cat';
--1655
select count(*) from petlicenses where zip_code = 98103 AND species = 'Pig';
--0
select count(*) from petlicenses where zip_code = 98103 AND species = 'Goat';
--0
--tot 4500


--Northgate Data
--[1939,934,2,4,2879]
select count(*) from petlicenses where zip_code = 98125 AND species = 'Dog';
--1939
select count(*) from petlicenses where zip_code = 98125 AND species = 'Cat';
--934
select count(*) from petlicenses where zip_code = 98125 AND species = 'Pig';
--2
select count(*) from petlicenses where zip_code = 98125 AND species = 'Goat';
--4
--tot 2879

--Alki Beach Data
--[1660,692,0,0, 2064]
select count(*) from petlicenses where zip_code = 98116 AND species = 'Dog';
--1660
select count(*) from petlicenses where zip_code = 98116 AND species = 'Cat';
--692
select count(*) from petlicenses where zip_code = 98116 AND species = 'Pig';
--0
select count(*) from petlicenses where zip_code = 98116 AND species = 'Goat';
--0
--total 2352

--U District Data
--[1360,704,0,0, 2064]
select count(*) from petlicenses where zip_code = 98105 AND species = 'Dog';
--1360
select count(*) from petlicenses where zip_code = 98105 AND species = 'Cat';
--704
select count(*) from petlicenses where zip_code = 98105 AND species = 'Pig';
--0
select count(*) from petlicenses where zip_code = 98105 AND species = 'Goat';
--0
--total 2064

--Queen Anne Data
--[1255,668,0,0, 1943]
select count(*) from petlicenses where zip_code = 98109 AND species = 'Dog';
--1255
select count(*) from petlicenses where zip_code = 98109 AND species = 'Cat';
--668
select count(*) from petlicenses where zip_code = 98109 AND species = 'Pig';
--0
select count(*) from petlicenses where zip_code = 98109 AND species = 'Goat';
--0
--tot 1943

--Capitol Hill Data
--[1001,622,0,0, 1623]
select count(*) from petlicenses where zip_code = 98102 AND species = 'Dog';
--1001
select count(*) from petlicenses where zip_code = 98102 AND species = 'Cat';
--622
select count(*) from petlicenses where zip_code = 98102 AND species = 'Pig';
--0
select count(*) from petlicenses where zip_code = 98102 AND species = 'Goat';
--0
--tot 1623



