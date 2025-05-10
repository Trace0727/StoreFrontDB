# StoreFrontDB

A Java-based GUI application that simulates a role-based storefront system backed by a MySQL database. This project demonstrates JDBC integration, stored procedure usage, and real-time GUI interaction for user registration, login, inventory management, and order processing.

---

## Project Structure

```
StoreFrontDB/
├── src/
│   ├── StoreFrontGUI.java
│   └── StoreFrontMain.java
└──
```

---

## Core Java Classes

### `StoreFrontGUI.java`
Contains all logic for:
- User registration and login using stored procedures
- Displaying and switching between admin and customer interfaces
- Managing product inventory and submitting customer orders

### `StoreFrontMain.java`
Launches the application by creating the main GUI window.

---

## How to Run

Compile and run using any Java-compatible IDE (like Eclipse or IntelliJ), or from the command line:

```bash
javac -cp ".:mysql-connector-j-8.x.x.jar" src/StoreFrontMain.java
java -cp ".:mysql-connector-j-8.x.x.jar:src" StoreFrontMain
```

Make sure to replace `mysql-connector-j-8.x.x.jar` with the actual filename of your JDBC driver.

---

## Future Enhancements
- Add user order history tracking.
- Implement password hashing and security improvements.
- Add GUI filters/search for product listings.
- Enable product editing and deletion features.
  
---

## License
This project is licensed for personal, non-commercial use only. Redistribution, resale, or modification is prohibited without written permission from the author.  
See the [LICENSE] file for full details.

---

## Author  
**Trace Davis**  
- GitHub: [Trace0727](https://github.com/Trace0727)  
- LinkedIn: [Trace Davis](https://www.linkedin.com/in/trace-d-926380138/)
c
