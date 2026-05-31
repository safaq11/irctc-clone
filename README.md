# IRCTC Clone Project
A railway reservation web application developed using Java, JSP, JDBC, PostgreSQL, HTML, CSS, and JavaScript.
## Overview

IRCTC Clone is a web-based railway ticket booking application developed using Java, JSP, HTML, CSS, JavaScript, JDBC, and PostgreSQL. The project replicates basic functionalities of the IRCTC railway reservation system, allowing users to register, log in, book tickets, check PNR status, view booking history, and manage their accounts.

---

## Features

### User Management

* User Registration
* User Login
* User Logout
* Session Management

### Ticket Booking

* Search Trains
* Book Railway Tickets
* Booking Confirmation Page
* View Booking History

### PNR Services

* Check PNR Status

### Additional Features

* Responsive User Interface
* PostgreSQL Database Connectivity
* JDBC-Based Data Access
* User Account Management

---

## Technology Stack

### Frontend

* HTML5
* CSS3
* JavaScript

### Backend

* Java
* JSP (Java Server Pages)
* JDBC

### Database

* PostgreSQL

### Development Environment

* Eclipse IDE
* Apache Tomcat Server

---

## Project Structure

```text
src/main/java/
└── com/irctc/
    └── DBConnection.java

src/main/webapp/
├── account/
│   ├── login.html
│   ├── login.jsp
│   ├── register.html
│   ├── register.jsp
│   ├── logout.jsp
│   └── history.jsp
│
├── train/
│   ├── book.jsp
│   ├── book-ticket.jsp
│   ├── booking-success.jsp
│   ├── pnr-status.jsp
│   └── seat-availability.jsp
│
├── css/
│   └── style.css
│
├── js/
│   └── script.js
│
├── images/
│   ├── logo.png
│   └── train.jpg
│
└── index.jsp
```

---

## Database Connection

The application uses PostgreSQL as the backend database.

Database connectivity is established through:

```java
DBConnection.java
```

using JDBC.

---

## How to Run

1. Install Java JDK
2. Install PostgreSQL
3. Configure Apache Tomcat Server
4. Import the project into Eclipse
5. Add PostgreSQL JDBC Driver
6. Configure database credentials in `DBConnection.java`
7. Run the project on Tomcat Server
8. Open the application in your browser

---

## Screens Included

* Home Page
* User Registration
* User Login
* Ticket Booking
* Booking Success
* Booking History
* PNR Status

---

## Known Limitation

The Seat Availability module is currently under development and may not function as expected. All other modules are implemented and working successfully.

---

## Learning Outcomes

Through this project, the following concepts were implemented and practiced:

* Java Web Development
* JSP Programming
* JDBC Connectivity
* PostgreSQL Database Operations
* Session Handling
* Form Validation
* Railway Reservation Workflow
* CRUD Operations
* Frontend and Backend Integration

---

## Author

Safaq Jamal

Developed as a learning project to understand Java Full Stack Web Development and Railway Reservation System implementation.
