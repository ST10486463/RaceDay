create database RaceDayDB;
use RaceDayDB;

Create table Users(usersID int identity(10,1) primary key, firstName varchar(250) not null, last_name varchar(250) not null, 
email varchar(250) not null, phoneNumber varchar(250) not null, password varchar(250) not null, address varchar(250));

Create table Categories(categoryID int identity(20,1)  primary key, categoryName varchar(250), distance);

Create table Events(eventID int identity(30,1)  primary key,eventName varchar(250), description varchar(250) not null,
eventDate date, location varchar(250) not null);

Create table Event_Enrolments(event_enrolment int identity(40,1)  primary key, eventID int, categoryID int, entryDate int, maximumParticipant);

Create table Organisers(organiserID int identity(40,1)  primary key, orgainserName varchar(250) not null, 
organiserSurname varchar(250), phoneNumber varchar(250));

--Create table results(resultsId int identity(50,1)  primary key, finishTime, postion, recordedDate, status);

Create table Route(routeID int identity(60,1)  primary key)

INSERT INTO Users(firstName, last_name, email, phoneNumber, address)
VALUES
('Thabo', 'Mokoena', 'thabo.mokoena@raceday.co.za', '0821234567', '12 Main Rd, Benoni'),
('Sarah', 'van der Merwe', 'sarah.vdm@raceday.co.za', '0827654321', '8 Oak Ave, Pretoria');

INSERT INTO Events(eventName, description, eventDate, location) 
VALUES
('Benoni Park Run Challenge', 'Annual community road running event', '2026-10-10', 'Benoni, Gauteng'),
('Pretoria Cycle Classic', 'Charity cycling event through the city', '2026-11-15', 'Pretoria, Gauteng'),
('Soweto Heritage Walk', 'Community fun walk celebrating local heritage', '2026-12-05', 'Soweto, Gauteng');
