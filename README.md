# WhatsApp AI Sales Agent 🤖

An AI-powered WhatsApp sales assistant designed to automate customer conversations, product inquiries, stock checking, delivery fees, and order processing.

## 🚀 Overview

This project demonstrates how AI Agents and workflow automation can be used to build a practical WhatsApp sales system for businesses.

The agent can communicate with customers, retrieve real business data, use a knowledge base to answer policy-related questions, and create orders after customer confirmation.

## ✨ Features

* 💬 WhatsApp AI sales conversations
* 🛍️ Product search and product information
* 📦 Real-time stock checking
* 🚚 Delivery fee lookup by customer location
* 👤 Customer management
* 🧠 RAG-based business knowledge
* 🛒 Order creation after customer confirmation
* 🔗 API and webhook integrations
* 🌐 Arabic / Sudanese-style customer conversations
* ⚙️ Automated workflows using n8n

## 🏗️ Architecture

```text
Customer
   │
   ▼
WhatsApp
   │
   ▼
Evolution API
   │
   ▼
n8n
   │
   ├── AI Agent
   │
   ├── Product & Stock Tools
   │
   ├── Delivery Tool
   │
   ├── RAG Knowledge Base
   │
   └── Order Processing
   │
   ▼
Supabase / PostgreSQL
```

## 🛠️ Tech Stack

| Technology           | Purpose                                  |
| -------------------- | ---------------------------------------- |
| n8n                  | Workflow automation and AI orchestration |
| OpenAI               | AI model and embeddings                  |
| Evolution API        | WhatsApp integration                     |
| Supabase             | Database and vector storage              |
| PostgreSQL           | Business and operational data            |
| RAG                  | Business knowledge retrieval             |
| Webhooks / REST APIs | System integrations                      |

## 🔄 Example Customer Flow

```text
Customer sends WhatsApp message
            ↓
Receive message through Evolution API
            ↓
n8n processes the request
            ↓
AI Agent understands the customer's intent
            ↓
Agent uses the required business tools
            ↓
Product / Stock / Delivery / RAG
            ↓
Customer confirms the order
            ↓
Order is created in Supabase
```

## 🔐 Security

This repository does not contain:

* API keys
* Database passwords
* WhatsApp credentials
* Private webhook secrets
* Real customer information

Sensitive credentials should be stored securely in environment variables or n8n credentials.

## 📸 Demo

Screenshots and example conversations will be added to demonstrate the system in action.

## 🎯 Purpose

This project is part of my AI Automation portfolio and demonstrates the development of practical AI-powered business automation systems.

---

### Built by Alia Abuzaid

AI Automation Developer | AI Agents | n8n | WhatsApp Automation
