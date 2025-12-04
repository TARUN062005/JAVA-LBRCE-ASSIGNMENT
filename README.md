# 📘 LBRCE Assignment Portal

### **AI-Enhanced Assignment Submission & Evaluation System**

Hosted on Render: **[https://java-lbrce-assignment.onrender.com/](https://java-lbrce-assignment.onrender.com/)**

---

## 🚀 Project Overview

**LBRCE Assignment Portal** is a full-stack academic platform combining **Java Servlets** with **Python-powered AI/ML models**.
It helps students and faculty of **LBRCE (Lakireddy Bali Reddy College of Engineering)** manage assignments, view analytics, and receive AI-generated insights.

The system supports:

* Assignment submission
* Plagiarism checking
* Automated grading assistance
* Performance prediction
* Admin + Faculty dashboards
* Student progress insights

The project demonstrates a hybrid architecture integrating **Java + Python micro-services** deployed on **Render**.

---

## 🛠️ Tech Stack

### **Frontend**

* HTML, CSS, JavaScript
* Bootstrap
* JSP (JavaServer Pages)

### **Backend**

* **Java Servlets**
* **JDBC** for database connectivity
* Apache Tomcat server

### **AI/ML Layer**

* **Python** (Flask/FastAPI)
* scikit-learn, pandas, numpy, nltk
* Models used for:

  * Similarity detection
  * AI-assisted grading
  * Assignment topic classification
  * Performance prediction

### **Database**

* MySQL / PostgreSQL
* JDBC integration

### **Deployment**

* Render (Java + Python services)

---

## ✨ Features

### 👨‍🎓 **Student Features**

* Register/Login
* View available assignments
* Upload submissions
* Receive AI-generated feedback
* View predicted performance
* Track grades & submission history

### 👩‍🏫 **Faculty Features**

* Upload assignments
* View student submissions
* Check plagiarism reports
* AI-assisted evaluation
* Download submissions
* Class analytics dashboard

### 🛡 **Admin Features**

* Manage users & courses
* System-level controls
* Update AI models
* Monitor analytics

### 🤖 **AI/ML Capabilities**

* **Plagiarism Detection** (TF-IDF / Cosine Similarity / BERT embeddings)
* **Automated Grading Assistance**
* **Topic Classification** for written answers
* **Grade Prediction** using regression/classification models
* **Risk Alerts** (students likely to underperform)

---

## 🔧 System Architecture

```
                +-----------------------+
                |      Web Browser      |
                +-----------+-----------+
                            |
                            v
                +-----------------------+
                |     Java Servlet      |
                |  (Backend + JSP UI)   |
                +-----------+-----------+
                            |
                (REST API / ProcessBuilder)
                            |
                            v
                +-----------------------+
                |   Python AI Service   |
                |  ML/NLP Models + API  |
                +-----------+-----------+
                            |
                            v
                +-----------------------+
                |     MySQL / Postgre   |
                +-----------------------+
```

---

## 🖥️ Local Setup Guide

### ✅ **Prerequisites**

* Java 8+
* Apache Tomcat 9+
* Python 3.8+
* MySQL/PostgreSQL
* Maven
* Git

---

### 🔹 **1. Clone the Repository**

```bash
git clone <repo-url>
cd LBRCE-Assignment-Portal
```

---

### 🔹 **2. Database Setup**

```bash
mysql -u root -p < database/assignment_portal.sql
```

Update DB credentials in:

```
src/main/resources/db.properties
```

---

### 🔹 **3. Run the Java Servlet Backend**

```bash
mvn clean install
cp target/LBRCE-Assignment.war <TOMCAT_HOME>/webapps/
<TOMCAT_HOME>/bin/startup.sh
```

The Java app runs on:

```
http://localhost:8080/
```

---

### 🔹 **4. Run the Python AI/ML Service**

```bash
cd python_ml_service
pip install -r requirements.txt
python app.py
```

Python AI API will run on:

```
http://localhost:5000/
```

---

### 🔹 **5. Configure Integration**

In `AIClient.java`, set:

```java
private static final String PYTHON_API = "http://localhost:5000/predict";
```

---

## 🌐 Hosted Version (Render)

Your live deployment is available at:

👉 **[https://java-lbrce-assignment.onrender.com/](https://java-lbrce-assignment.onrender.com/)**

Java backend + Python AI service run as separate Render services with interconnected APIs.

---

## 📁 Project Structure

```
LBRCE-Assignment-Portal/
│
├── src/
│   ├── main/java/servlets/
│   ├── main/webapp/WEB-INF/
│   └── resources/db.properties
│
├── python_ml_service/
│   ├── app.py
│   ├── model.pkl
│   └── requirements.txt
│
├── database/assignment_portal.sql
├── README.md
└── pom.xml
```

---

## 👤 Author

**Developed by:**

### **VEMURI PRINCE TARUN**

Full-Stack | Cloud | AI Engineer
Portfolio: *[https://portfolio-tarun06.vercel.app/](https://portfolio-tarun06.vercel.app/)*

---

## ⭐ Contributions

Pull requests and feature suggestions are welcome!

---

## 🏷 License

This project is for educational and demonstration purposes.

---

If you want, I can also generate:
✅ A shorter README
✅ A version with images/screenshots
✅ A GitHub-optimized README with badges and icons
Just tell me!
