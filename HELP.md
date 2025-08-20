# 🆘 HELP.md - Quick Reference & Automation Guide

This file complements the README.md, providing practical commands and quick tips for working with the MongoDB Hexagonal Architecture project.

## ⚡ Main Automation Commands (Makefile)

| Command                | Description                                 |
|------------------------|---------------------------------------------|
| make build             | Build the project and install dependencies  |
| make run               | Run the Spring Boot application             |
| make test              | Run all tests                               |
| make coverage          | Generate test coverage report (JaCoCo)      |
| make dependency-check  | Run OWASP Dependency-Check audit            |
| make dependency-tree   | Show Maven dependency tree                  |
| make clean             | Clean build artifacts                       |
| make docker-build      | Build Docker image                          |
| make sonar             | Run SonarQube static analysis               |
| make dist-clean        | Remove temp files                           |


## 🚦 Quick Usage Examples

- **Build & Run:**
  ```bash
  make build && make run
  ```
- **Run Tests:**
  ```bash
  make test
  ```
- **Check Coverage:**
  ```bash
  make coverage
  ```
- **Audit Dependencies:**
  ```bash
  make dependency-check
  ```
- **Show Dependency Tree:**
  ```bash
  make dependency-tree
  ```

---

## 📚 Reference Documentation

- [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
- [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.8/maven-plugin)
- [Spring Data MongoDB](https://docs.spring.io/spring-boot/3.4.8/reference/data/nosql.html#data.nosql.mongodb)
- [Spring Web](https://docs.spring.io/spring-boot/3.4.8/reference/web/servlet.html)
- [Validation](https://docs.spring.io/spring-boot/3.4.8/reference/io/validation.html)
- [Spring Boot Actuator](https://docs.spring.io/spring-boot/3.4.8/reference/actuator/index.html)

---

## 📖 Guides & Tutorials

- [Accessing Data with MongoDB](https://spring.io/guides/gs/accessing-data-mongodb/)
- [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
- [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
- [Validation](https://spring.io/guides/gs/validating-form-input/)
- [Spring Boot Actuator Service](https://spring.io/guides/gs/actuator-service/)

---

## 📝 Maven Parent Overrides (Advanced)

Due to Maven's design, elements are inherited from the parent POM to the project POM. While most inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>`. To prevent this, the project POM contains empty overrides for these elements. If you manually switch to a different parent and want inheritance, remove those overrides.

---

For more details, onboarding, and security, see [README.md](./README.md), [SECURITY_GUIDE.md](./SECURITY_GUIDE.md), and [SECURITY_ANALYSIS.md](./SECURITY_ANALYSIS.md).
