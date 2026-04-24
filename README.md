# ☕ Jenkins Project — Java Web Application with Docker

A Java web application built with Maven and containerized with Docker, designed to be integrated with a Jenkins CI/CD pipeline. This repository contains the full application source code, build configuration, and Dockerfile — making it ready for automated builds and deployments right out of the box.

---

## 📌 About This Project

This project serves as the **application source code** that a Jenkins pipeline picks up, compiles, packages, and ships as a Docker container. It's a practical example of how a standard Java web app fits into a modern DevOps workflow.

The project has seen active development with over **247 commits**, making it one of the more mature projects in this collection.

---

## 🗂️ Project Structure

```
jenkins_project/
├── src/                  # Java source code
│   └── main/
│       ├── java/         # Application logic
│       └── webapp/       # Web frontend (CSS + HTML)
├── target/               # Maven build output (compiled artifacts)
├── pom.xml               # Maven project configuration
└── Dockerfile            # Container image definition
```

---

## 🔧 Tech Stack

| Technology  | Usage                                      |
|-------------|--------------------------------------------|
| Java        | Core application language (40% of codebase)|
| CSS         | Frontend styling (57% of codebase)         |
| Maven       | Build tool and dependency management       |
| Docker      | Application containerization               |
| Jenkins     | CI/CD automation (pipeline not in this repo)|

---

## 🏗️ Building the Project

### Build with Maven

Make sure you have Java JDK and Maven installed, then run:

```bash
# Clean and compile the project
mvn clean package
```

This generates a `.war` or `.jar` file inside the `target/` directory.

### Build the Docker Image

```bash
docker build -t jenkins-project-app .
```

### Run the Container

```bash
docker run -d -p 8080:8080 --name myapp jenkins-project-app
```

Visit `http://localhost:8080` to see the application running.

---

## 🤖 Jenkins Integration

This repository is intended to be used as the source for a Jenkins pipeline. A typical pipeline for this project would:

1. Pull the latest code from GitHub
2. Run `mvn clean package` to build the artifact
3. Build a Docker image using the `Dockerfile`
4. Push the image to a registry (Docker Hub, ECR, etc.)
5. Deploy the container to a server or Kubernetes cluster

Example Jenkins pipeline stage for building this project:

```groovy
stage('Build') {
    steps {
        sh 'mvn clean package'
    }
}

stage('Docker Build') {
    steps {
        sh 'docker build -t sudhakar20000/jenkins-project:latest .'
    }
}
```

---

## 📋 Prerequisites

To work with this project locally, you need:

- Java JDK 8 or higher
- Apache Maven 3.x
- Docker (for containerization)
- A running Jenkins instance (for CI/CD)

---

## 👤 Author

**Sudhakar** — [GitHub Profile](https://github.com/Sudhakar20000)
