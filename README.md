
# 🎉 Event Management System — A.S.H Event Planners

A full-stack web-based Event Management System developed using *Java (JSP/Servlets)* and *MySQL*. It allows users to register, log in, and book events, while the admin can manage events from a dedicated dashboard.

---

## ✅ Features

### 👤 User Panel
- Create an account (registration)
- Secure login
- View a list of all upcoming events
- Book/register for events
- Booking confirmation with user ID and email

### 🛠️ Admin Panel
- Login using admin@ash.com
- Add new events (title, description, date, location)
- View and delete existing events
- Simple dashboard UI for event control

---

## 🧰 Technologies Used

| Layer       | Technology                    |
|-------------|-------------------------------|
| Frontend    | HTML, CSS, JSP                |
| Backend     | Java Servlets + JSP           |
| Database    | MySQL                         |
| Server      | Apache Tomcat (8 or 9)        |
| IDE         | Eclipse / IntelliJ IDEA       |

---

## ⚙️ Prerequisites & Requirements

Before running this project, ensure the following are installed on your system:

- ✅ Java JDK 8+
- ✅ Apache Tomcat 8.5 or 9+
- ✅ MySQL Server
- ✅ Eclipse or IntelliJ IDEA (with web tools)
- ✅ MySQL JDBC Connector (add to classpath)

---

## 🔧 How to Set Up & Run the Project Locally

### 1. Clone or Download the Project
```bash
git clone https://github.com/your-username/EventManagementSystem.git
```
Or simply download and unzip the folder.

### 2. Set Up the MySQL Database
Open MySQL Workbench or CLI and run the provided SQL script from `/database/schema.sql`:

```sql
SOURCE path/to/schema.sql;
```

This will create:
- `users` table
- `events` table
- `registrations` table

### 3. Update DB Credentials in Code
In `src/com/event/DBConnection.java`, update your MySQL credentials:

```java
return DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/eventdb", "your_mysql_username", "your_mysql_password"
);
```

### 4. Import & Run the Project
- Open Eclipse or IntelliJ IDEA
- Import project as a Dynamic Web Project
- Add the project to your Apache Tomcat server
- Start the server
- Visit [http://localhost:8080/EventManagementSystem](http://localhost:8080/EventManagementSystem)

---

## 🔑 Default Admin Login
To access the admin dashboard, use:
- **Email**: `admin@ash.com`
- **Password**: *(any)* – You can implement password checks if needed

---

## 🌱 Future Improvements
- Role-based login (Admin/User distinction with session checks)
- Password hashing for security
- Email confirmation via JavaMail API
- Event search/filter by date/category
- Admin event editing
- User view of booked events
- Event image uploads
- Mobile responsive design

---

## 📝 License
This project is intended for educational purposes and may be used freely for learning and showcasing.

Happy coding!!