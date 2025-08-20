# 🧩 MongoDB Hexagonal Architecture

Projeto de exemplo Spring Boot com MongoDB, seguindo arquitetura hexagonal e boas práticas de segurança, automação e documentação.

---

## 🚀 Visão Geral

Este projeto demonstra como estruturar uma aplicação backend moderna utilizando:
- **Spring Boot**
- **MongoDB**
- **Arquitetura Hexagonal (Ports & Adapters)**
- **Validação Bean Validation**
- **MapStruct para mapeamento DTO/Entidade**
- **Swagger/OpenAPI para documentação**
- **Segurança com Spring Security**
- **Automação via Makefile**
- **Auditoria de dependências (OWASP Dependency-Check)**
- **Cobertura de testes (JaCoCo)**

---

## 📦 Estrutura do Projeto

```
├── src/main/java/com/mongodb
│   ├── adapters/         # Inbound/Outbound Adapters
│   ├── application/      # Application Layer (Use Cases)
│   ├── config/           # Configurações (CORS, Security, Swagger)
│   ├── core/             # Domínio (Entidades, Serviços)
│   ├── exception/        # Tratamento de erros
├── src/main/resources
│   ├── application.yml   # Configuração principal
│   ├── application-dev.yml
│   ├── application-prod.yml
│   ├── data/             # Dados de exemplo
│   ├── static/, templates/
├── Makefile              # Automação de build, testes, auditoria
├── pom.xml               # Dependências Maven
├── SECURITY_GUIDE.md     # Diretrizes de segurança
├── SECURITY_ANALYSIS.md  # Análise profunda de segurança
├── HELP.md               # Guia rápido de comandos e uso
```

## 🛠️ Principais Funcionalidades

- CRUD de Propostas (Proposal)
- Validação de dados via DTOs
- Mapeamento automático com MapStruct
- Documentação interativa via Swagger UI
- Segurança configurável (CORS, CSRF, autenticação)
- Testes automatizados e cobertura
- Auditoria de dependências e análise estática

---

## 📚 Documentação e Ajuda

Consulte o arquivo [HELP.md](./HELP.md) para:
- Comandos de automação (Makefile)
- Como rodar, testar e auditar o projeto
- Dicas rápidas de uso

---

## 🔒 Segurança

- Diretrizes e práticas: [SECURITY_GUIDE.md](./SECURITY_GUIDE.md)
- Análise detalhada: [SECURITY_ANALYSIS.md](./SECURITY_ANALYSIS.md)
- Auditoria de dependências: `make dependency-check`

---

## 🚦 Como Executar

1. **Pré-requisitos:** Java 17+, Maven, Docker (opcional)
2. **Instalar dependências e build:**
   ```bash
   make build
   ```
3. **Rodar aplicação:**
   ```bash
   make run
   ```
4. **Testar:**
   ```bash
   make test
   ```
5. **Cobertura de testes:**
   ```bash
   make coverage
   ```
6. **Documentação Swagger:**
   Acesse [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)

Para mais comandos e automações, consulte o [HELP.md](./HELP.md).

---

## 🧪 Testes e Qualidade

- Testes unitários e de integração
- Cobertura via JaCoCo
- Análise estática: SpotBugs, Checkstyle, PMD, SonarQube

---

## 📦 Auditoria de Dependências

- OWASP Dependency-Check integrado
- Comando: `make dependency-check`
- Árvore de dependências: `make dependency-tree`

---

## 🏛️ Arquitetura Hexagonal

- Separação clara entre domínio, aplicação e infraestrutura
- Adapters inbound/outbound para facilitar testes e evolução
- Uso de DTOs e mapeadores para desacoplamento

---

## 🌍 **Junte-se a nós**

Se você acredita que este projeto pode ajudar outros desenvolvedores, compartilhe com sua rede! Vamos construir juntos
uma infraestrutura de desenvolvimento mais eficiente e acessível para todos. 🚀✨

---

## 🛠️ **Contribua e faça parte da comunidade**

Este projeto é **open-source** e está em constante evolução. Sua contribuição é muito bem-vinda! Seja você um
desenvolvedor experiente ou iniciante, há várias formas de ajudar:

- 💬 **Sugira melhorias:** Abra uma issue com suas ideias.
- 🛠️ **Contribua com código:** Envie pull requests com novas funcionalidades ou correções.
- ⭐ **Dê uma estrela no GitHub:** Isso ajuda o projeto a alcançar mais desenvolvedores.

Contribuições são bem-vindas! Veja [SECURITY_GUIDE.md](./SECURITY_GUIDE.md) para diretrizes de segurança.

**Dúvidas rápidas? Consulte o [HELP.md](./HELP.md). Para segurança, veja [SECURITY_GUIDE.md](./SECURITY_GUIDE.md) e [SECURITY_ANALYSIS.md](./SECURITY_ANALYSIS.md).**

---

## 📄 Licença

Este projeto está sob a licença Apache 2.0. Veja mais detalhes

> 💡 **Nota:** Este projeto está em constante desenvolvimento. Algumas funcionalidades podem estar incompletas ou
> sujeitas a alterações. Contribuições são sempre bem-vindas! 🛠️
---

## 🙏 **Agradecimentos**

Agradecemos por utilizar este projeto! Caso tenha sugestões, melhorias ou encontre algum problema, sinta-se à vontade
para abrir uma issue ou enviar um pull request. Sua contribuição é muito bem-vinda! 💡

---

## ✍️ **Autor**

Desenvolvido por **Kleilson Santos**.

---

## 📬 Contato

- 📧 [Email](kleilson@icloud.com) kleilson@icloud.com
- 🌐 [GitHub](https://github.com/KleilsonSantos) - KleilsonSantos
- 💼 [LinkedIn](https://www.linkedin.com/in/kleilson-dev-full-stack) - KleilsonSantos

<p align="center">⚡ Construa com segurança, teste com propósito, automatize com clareza.<br>Kleilson Santos 🚀</p>