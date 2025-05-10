# StoreFrontDB

A simple Java and MySQL-based application that simulates a storefront system with user authentication, product ordering, and admin controls via a graphical interface. Great for learning database integration, GUI design, and stored procedure execution in Java.

---

## Project Structure

```
StoreFrontDB/
├── src/
│   └── StoreFrontGUI.java
│   └── StoreFrontMain.java
├── sql/
│   └── StoreFrontDB_setup.sql
├── lib/
│   └── mysql-connector-j-9.3.0.jar
```

---

## Core Java Classes

### `StoreFrontMain.java`
Launches the GUI and initializes the main application window.

### `StoreFrontGUI.java`
Contains all core GUI logic:
- Registering and logging in users
- Placing product orders
- Viewing total sales (admin)
- Adding new products (admin)
- Communicating with MySQL via stored procedures

---

## How to Run

### 1. Set up MySQL
Run the SQL setup script to configure the database:

```bash
mysql -u root -p < sql/StoreFrontDB_setup.sql
```

### 2. Compile and Run the Java Code

```bash
javac -cp "lib/mysql-connector-j-9.3.0.jar" src/*.java
java -cp "lib/mysql-connector-j-9.3.0.jar:src" StoreFrontMain
```

---

## Future Enhancements
- Add persistent login session or remember-me feature.
- Improve GUI layout with modern design frameworks.
- Implement product image uploads and display.
- Add user profile management and order history views.

---

## License
This project is licensed for personal, educational use only. Redistribution or commercial use requires permission from the author.  
See the [LICENSE] file for full details.

---

## Author  
**Trace Davis**  
- GitHub: [Trace0727](https://github.com/Trace0727)  
- LinkedIn: [Trace Davis](https://www.linkedin.com/in/trace-d-926380138/)
