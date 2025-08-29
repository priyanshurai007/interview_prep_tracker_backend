# 📘 Interview Prep Tracker - Backend

This is the **Spring Boot backend** for the Interview Prep Tracker full-stack application, designed to help users manage and track their technical interview preparation. It exposes secure REST APIs and interacts with PostgreSQL for persistent data storage.

---

## 🚀 Features

- 🔐 User authentication via Firebase token validation  
- 📚 Topic-wise and company-wise question tracking  
- 📊 Progress management APIs (create/update/fetch progress)  
- 📈 Structured relational database using PostgreSQL  
- 🌍 CORS support for frontend-backend interaction  
- 🐳 Containerized with Docker and deployed on Render  

---

## 🛠 Tech Stack

- **Java + Spring Boot** – Backend framework  
- **PostgreSQL** – Relational database  
- **Spring Security + Firebase Auth** – Authentication  
- **Spring Data JPA** – ORM for database access  
- **Docker** – Containerization  
- **Render** – Deployment  
- **REST API** – Frontend-backend integration  

---

## 🔧 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/priyanshurai007/interview_prep_tracker_backend.git
cd interview_prep_tracker_backend
```
### 2. Configure Environment
Set environment variables in application.properties or use a .env file (if using Docker). Example config:

spring.datasource.url=jdbc:postgresql://localhost:5432/interview_prep
spring.datasource.username=your_db_username
spring.datasource.password=your_db_password
firebase.admin-sdk-path=path/to/firebase-adminsdk.json
frontend.url=http://localhost:3000
Replace with your own DB credentials and Firebase Admin SDK path.

### 3. Run Locally
If using Maven:

./mvnw spring-boot:run
Or use Docker:

docker build -t interview-prep-backend .
docker run -p 8080:8080 interview-prep-backend
Backend runs at: http://localhost:8080

---

## 🌐 Deployed Version  
👉 [Live Backend API](https://interview-prep-tracker-backend.onrender.com)

---

## 💻 Frontend Repository  
🔗 [Frontend GitHub Repo](https://github.com/priyanshurai007/interview_prep_tracker_frontend)

---

## 🧑‍💻 Author  
**Priyanshu Rai**  
📧 [priyanshurai439@gmail.com](mailto:priyanshurai439@gmail.com)  
🔗 [LinkedIn](https://linkedin.com/in/priyanshurai439)  
🐙 [GitHub](https://github.com/priyanshurai007)

---

## ⭐ Contributions  
Contributions are welcome! Please feel free to raise issues or submit pull requests.

---

## 📄 License  
This project is licensed under the [MIT License](LICENSE).

---

> Let me know if you'd also like:
> 
> - 📘 Swagger API documentation  
> - 🔁 Postman collection setup  
> - 🧩 ER diagram or DB schema export  
> - ❤️ Health check API guide for Render  
> 
> Happy building!
