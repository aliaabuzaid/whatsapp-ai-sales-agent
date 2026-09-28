# 🤖 WhatsApp AI Sales Agent

An AI-powered WhatsApp sales agent designed to automate customer conversations, product inquiries, stock checking, delivery information, and order processing.

> **Focus:** AI agents, tool-based workflows, WhatsApp automation, sales automation, and business system integration.

---

## 🎯 Project Overview

This project demonstrates how an **AI Agent can interact with business systems through specialized tools** to handle a customer sales conversation from product discovery to order creation.

Instead of using the AI model only for generating text, the agent can decide when it needs business data and call the appropriate tool.

```text
Customer
   ↓
WhatsApp
   ↓
AI Agent
   ↓
Understand Intent
   ↓
Select Tool
   ↓
Business Data
   ↓
Generate Response
   ↓
Customer
```

---

## 💬 Business Use Case

A customer contacts a business through WhatsApp and asks about a product.

The agent can:

1. Understand the customer's request
2. Search for the product
3. Retrieve product information
4. Check stock availability
5. Calculate or retrieve delivery information
6. Answer business-policy questions using the knowledge base
7. Confirm the customer's order
8. Create the order in the database

The goal is to reduce manual customer-service and sales work while keeping business data connected to the conversation.

---

## 🏗️ System Architecture

```text
                         CUSTOMER
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
                            ▼
                       AI AGENT
                            │
              ┌─────────────┼─────────────┐
              │             │             │
              ▼             ▼             ▼
        Product Tool   Stock Tool   Delivery Tool
              │             │             │
              └─────────────┼─────────────┘
                            │
                            ▼
                       Supabase
                      PostgreSQL
                            │
                            │
                     ┌──────┴──────┐
                     │             │
                     ▼             ▼
                 RAG Tool     Order Tool
                     │             │
                     ▼             ▼
               Knowledge Base   Orders
```

---

## 🧠 AI Agent

The AI Agent acts as the conversational layer between the customer and the business systems.

Its responsibilities include:

* Understanding customer intent
* Maintaining conversation context
* Deciding which tool is required
* Retrieving business information
* Asking for missing information
* Confirming important actions
* Generating natural customer responses

The agent should not invent product, stock, delivery, or order information.

When reliable business data is required, it should use the appropriate tool.

---

## 🔧 Agent Tools

### 🔎 Product Search

Searches the product database based on the customer's request.

Example:

```text
Customer:
هل عندكم شامبو كيتوزول؟

       ↓

Product Search Tool

       ↓

Product:
Ketozol Shampoo 100ml
```

---

### 📦 Stock Check

Retrieves current stock information from the business database.

```text
Customer:
هل المنتج متوفر؟

       ↓

Stock Tool

       ↓

Current Stock
```

This keeps frequently changing inventory information outside the static RAG knowledge base.

---

### 🚚 Delivery Tool

Retrieves delivery information based on the customer's location.

```text
Customer Location
       ↓
Delivery Tool
       ↓
Delivery Fee
```

---

### 🧠 Knowledge / RAG Tool

Used for relatively stable business information such as:

* Return policy
* Delivery policy
* Payment methods
* Company information
* Frequently asked questions

The RAG component is used when the customer asks a knowledge-based question rather than when the agent needs live operational data.

---

### 🛒 Order Tool

Creates an order after the customer confirms the purchase.

```text
Product
   ↓
Quantity
   ↓
Customer Information
   ↓
Delivery Information
   ↓
Customer Confirmation
   ↓
Create Order
```

---

## 🔄 End-to-End Sales Flow

```text
Customer Message
        ↓
WhatsApp
        ↓
Evolution API
        ↓
n8n Webhook
        ↓
AI Agent
        ↓
Understand Intent
        ↓
Select Required Tool
        ↓
┌──────────────────────────┐
│ Product Search           │
│ Stock Check              │
│ Delivery Information     │
│ Knowledge / RAG          │
│ Order Creation           │
└──────────────────────────┘
        ↓
Generate Response
        ↓
Customer Confirmation
        ↓
Create Order
        ↓
Supabase / PostgreSQL
```

---

## 🛍️ Example Conversation

```text
Customer:
السلام عليكم، عندكم كيتوزول شامبو؟

AI Agent:
وعليكم السلام 🌷
نعم، يوجد Ketozol Shampoo 100ml.
هل تريد معرفة السعر والتوفر؟

Customer:
نعم

AI Agent
      ↓
Product Search
      ↓
Stock Check

AI Agent:
المنتج متوفر.
هل ترغب في طلبه؟

Customer:
نعم، أريد 2.

AI Agent:
تمام. سأجهز الطلب للتأكيد.

      ↓
Customer Confirmation
      ↓
Create Order Tool
      ↓
Supabase
```

---

## 🗄️ Business Data

The system separates different types of information according to how they are used.

### Structured / Live Data

```text
Products
Stock
Customers
Orders
Order Items
Delivery Fees
```

This information should be retrieved through database queries or dedicated tools.

### Knowledge Base

```text
FAQs
Return Policy
Payment Policy
Delivery Policy
Company Information
```

This information can be retrieved through the RAG pipeline.

---

## 🔗 Integrations

```text
WhatsApp
   ↓
Evolution API
   ↓
n8n
   ↓
AI Agent
   ↓
Supabase / PostgreSQL
```

The system uses APIs and webhooks to connect the conversational interface with the automation workflows and business database.

---

## 🛠️ Tech Stack

| Technology        | Purpose                                  |
| ----------------- | ---------------------------------------- |
| **n8n**           | Workflow automation and AI orchestration |
| **OpenAI**        | AI model and embeddings                  |
| **Evolution API** | WhatsApp integration                     |
| **Supabase**      | Database and vector storage              |
| **PostgreSQL**    | Business and operational data            |
| **RAG**           | Business knowledge retrieval             |
| **REST APIs**     | System integrations                      |
| **Webhooks**      | Event-driven communication               |

---

## 🔐 Security

This repository is intended for portfolio demonstration.

It does not contain:

* API keys
* Database passwords
* WhatsApp credentials
* Webhook secrets
* Real customer information
* Private business data

Sensitive credentials should be managed through secure n8n credentials, environment variables, or an appropriate secret-management system.

---

## 📸 Demo

Screenshots and workflow examples can be added to demonstrate:

* WhatsApp conversation
* AI Agent workflow
* Product search
* Tool execution
* Order creation
* Supabase database

---

## 🚀 Future Improvements

Potential improvements include:

* Conversation memory
* Multilingual customer support
* Advanced product recommendations
* Order status tracking
* Customer segmentation
* Automated follow-ups
* Human-agent handoff
* Analytics dashboard
* Additional business tools

---

## 🎯 Project Purpose

This project demonstrates how **AI Agents can be connected to real business systems through tools and workflow automation**.

The main focus is not simply generating AI responses, but allowing the agent to:

**Understand → Decide → Use Tools → Retrieve Business Data → Respond → Take Action**

---

### Built by Alia Abuzaid

**AI Automation Developer | AI Agents | n8n | WhatsApp Automation**
