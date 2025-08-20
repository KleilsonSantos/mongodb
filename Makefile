# -------------------------------------------------------------
# 🧩 MongoDB Hexagonal Architecture - Makefile
# 👨‍💻 Author: Kleilson Santos
# 📅 Last Updated: 2025-08-16
#
# 📦 Integrated Tools & Services:
#   🧪 Testing & Coverage:   → Maven, JaCoCo
#   🛡️ Security:             → OWASP Dependency-Check
#   🔍 Code Quality:         → SpotBugs, Checkstyle, PMD, SonarQube
#   📦 Containerization:     → Docker
#   📚 Documentation:        → Swagger/OpenAPI
#
# 🎯 Available Targets:
#   ┌───────────── Build & Test ──────────────┐
#   │ build            → mvn clean install     │
#   │ test             → mvn test              │
#   │ coverage         → mvn jacoco:report     │
#   │ run              → mvn spring-boot:run   │
#   │ clean            → mvn clean             │
#   └─────────────────────────────────────────┘
#   ┌───────────── Security & Quality ────────┐
#   │ dependency-check → OWASP scan            │
#   │ spotbugs         → Static analysis       │
#   │ checkstyle       → Code style check      │
#   │ pmd              → Code quality check    │
#   │ sonar            → SonarQube analysis    │
#   └─────────────────────────────────────────┘
#   ┌───────────── Container & Docs ──────────┐
#   │ docker-build      → Build Docker image   │
#   │ swagger           → Swagger UI info      │
#   │ dist-clean        → Remove temp files    │
#   └─────────────────────────────────────────┘
# -------------------------------------------------------------

# Makefile for MongoDB Hexagonal Architecture Project

.PHONY: build test coverage run clean dependency-check swagger spotbugs checkstyle pmd docker-build dist-clean sonar sonar-cloud dependency-tree

build:
	mvn clean install

test:
	mvn test

coverage:
	mvn jacoco:report

run:
	mvn spring-boot:run

clean:
	mvn clean

dependency-check:
	@if [ -z "$$NVD_API_KEY" ]; then echo "❌ NVD_API_KEY not set!"; exit 1; fi
	mvn dependency-check:check -DnvdApiKey=$$NVD_API_KEY
	#mvndependency-check:aggregate
	#DnvdApiKey=$(DEPENDENCY_CHECK_API_KEY)

swagger:
	@echo "Swagger UI available at http://localhost:8085/swagger-ui.html"

spotbugs:
	mvn spotbugs:check

checkstyle:
	mvn checkstyle:check

pmd:
	mvn pmd:check

docker-build:
	docker build -t mongodb-hexagonal .

dist-clean:
	rm -rf target

sonar:
	mvn sonar:sonar

# SonarCloud analysis (secure, uses environment variables)
sonar-cloud:
	mvn sonar:sonar -Dsonar.projectKey=$(SONAR_PROJECT_KEY) -Dsonar.organization=$(SONAR_ORG) -Dsonar.token=$(SONAR_TOKEN) -Dsonar.host.url=https://sonarcloud.io

dependency-tree:
	mvn dependency:tree
