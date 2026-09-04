# RaceDay
RaceDay

A full-stack web-based event management system for the South African road running, walking, and cycling community. Event Organisers can create and manage events, categories, and participant results. Participants can browse upcoming events, enter events, track their personal performance history, and prepare for race day using live weather and route information.

This is an individual project built progressively across three parts, reflecting real-world software development practices used in the sports technology industry.

Project Status

This submission covers Part 1 - Planning:

Section A - Entity Relationship Diagram
Section B - API Endpoint Plan
Section C - SQL Database Script
/docs Folder Contents

File	Description
RaceDay_ERD.png	Entity Relationship Diagram - 7 entities, primary keys, foreign keys, and cardinality shown in UML notation
RaceDay_API_Endpoint_Plan.md	Full API endpoint plan, grouped by functional area (Authentication, User Profile, Events, Categories, Event Enrolments, Results)
RaceDay_Schema.sql	SQL Server script that creates the full database schema and seeds it with sample data
Database Overview

The schema is built around 7 tables:

Users - stores login credentials and role (Organiser or Participant) for every account
Participants - profile information for accounts with the Participant role, linked 1:1 back to Users
Events - created and managed by an Organiser (a User)
Categories - age/gender/distance categories offered per event (e.g. Under 20, 10km)
Routes - course information per event (name, distance, elevation, map link)
Event_Enrolments - bridge table resolving the many-to-many relationship between Participants and Categories; records which participant entered which category of which event
Results - finish time, position, and pace, linked 1:1 back to an enrolment

Run RaceDay_Schema.sql in SQL Server Management Studio to create the RaceDayDB database, all tables, constraints, and seed data (2 Organisers, 2 Participants, 3 Events, categories and routes per event, and sample enrolments with results).

API Overview

The API plan covers six functional areas, each requiring a different combination of Organiser/Participant access:

Authentication - register and log in, open to anyone
User Profile - view/update your own profile, both roles
Events - Organisers manage (create/update/delete), both roles can view
Categories - Organisers define categories per event, both roles can view
Event Enrolments - Participants enter events by selecting a category; Organisers view all enrolments for their events
Results - Organisers capture results; Participants view only their own

Full endpoint-by-endpoint detail (HTTP method, route, description, role required, request body, expected response) is in RaceDay_API_Endpoint_Plan.md.

Decription of the two roles

Organizer

The Organizer is responsible for planning, creating, and managing events on the system. The organizer can create an event by entering information such as the event name, date, location, description, category, and route. The organizer can also manage the event after it has been created, including updating event information when necessary. They are responsible for assigning or managing the route that participants will follow during the event. The organizer can monitor the participants who have enrolled for an event and manage event-related information. After the event has taken place, the organizer can record, update, and manage participants' results. The organizer therefore controls the main event information and ensures that the event, route, enrolments, and results are properly managed.

2. Participant

The Participant is a user who takes part in an event organised through the system. The participant can view available events and their details, such as the event name, date, location, category, and description. They can select an event they are interested in and enrol/register to participate in it. Once enrolled, the participant can access information about the route they need to follow for the event. The participant attends and takes part in the event, after which their performance or completion information can be recorded as a result. The participant can then view their event participation and results through the system. Their main responsibility is to register for events, participate in them, and view their event-related information and results

Youtube link
https://www.youtube.com/watch?v=Kf4Jq-R7Gbk
