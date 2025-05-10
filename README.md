# StoreFrontDB

A Java Swing-based desktop application that simulates a storefront interface with MySQL integration, allowing users to register, log in, place orders, and manage inventory using stored procedures.

---

## Project Structure

```
StoreFrontDB/
├── src/
│   └── (default package)/
│       ├── StoreFrontMain.java
│       └── StoreFrontGUI.java
├── lib/
│   └── mysql-connector-j-9.3.0.jar
└──
```

---

## Core Java Classes

### `StoreFrontMain.java`
- Entry point of the program
- Launches the main GUI window

### `StoreFrontGUI.java`
Contains all logic for:
- Registering new users
- Logging in with credentials
- Role-based UI display (admin vs. customer)
- Product ordering interface
- Admin inventory and sales management

---

## How to Run

Compile and run using Eclipse or from the terminal:

```bash
javac -cp ".:lib/mysql-connector-j-9.3.0.jar" src/*.java
java -cp ".:lib/mysql-connector-j-9.3.0.jar:src" StoreFrontMain
```

---

## Future Enhancements
- Add user-friendly form validation and error prompts
- Track individual order history per user
- Export sales reports to CSV
- Enhance UI layout using layout managers
- Support database config file instead of hardcoded credentials

---

## License
This project is licensed for personal, non-commercial use only. Redistribution, resale, or modification is prohibited without written permission from the author.  
See the [LICENSE] file for full details.

---

## Author  
**Trace Davis**  
- GitHub: [Trace0727](https://github.com/Trace0727)  
- LinkedIn: [Trace Davis](https://www.linkedin.com/in/trace-d-926380138/)
