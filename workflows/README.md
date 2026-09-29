# ⚙️ n8n Workflows

This folder contains sanitized **n8n workflow examples** used as part of the WhatsApp AI Sales Agent.

The workflows demonstrate how WhatsApp conversations can be connected to AI processing, business data, knowledge retrieval, and order-related automation.

---

## 🔄 Workflow Architecture

```text
WhatsApp Message
       ↓
Message Handling
       ↓
AI Agent Processing
       ↓
Business Tool / Workflow
       │
       ├── Product & Stock Lookup
       ├── Delivery Fee Calculation
       ├── RAG Knowledge Retrieval
       └── Order Processing
       ↓
Customer Response
```

---

## 🧩 Workflow Components

### 💬 WhatsApp Message Handling

Handles incoming customer messages and connects the WhatsApp conversation with the automation workflow.

### 👤 Customer Management

Processes customer-related information required during the conversation and sales workflow.

### 🤖 AI Agent Processing

The AI Agent interprets the customer's request and determines which business operation is required.

### 🛍️ Product & Stock Lookup

Connects the AI conversation with product and inventory information.

### 🚚 Delivery Fee Calculation

Handles delivery-related information based on the customer's request and available business data.

### 🧠 RAG Knowledge Retrieval

Retrieves relevant information from the business knowledge base for questions that require contextual business information.

### 🛒 Order Processing

Handles the order-processing stage after the required customer and product information has been collected.

---

## 🔗 Automation Flow

```text
Customer
   ↓
WhatsApp
   ↓
n8n
   ↓
AI Agent
   ↓
Business Workflow
   ↓
Business Data / Knowledge
   ↓
Process Result
   ↓
Customer Response
```

---

## 🔐 Security

All workflow examples in this repository should be **sanitized before being committed to GitHub**.

Do not include:

* API keys
* Access tokens
* n8n credentials
* Database passwords
* Webhook secrets
* Customer information
* Private business configuration

Credentials should be configured separately inside n8n using secure credential management.

---

## 📁 Repository Structure

```text
workflows/
│
├── README.md
│
└── Sanitized n8n workflow examples
```

---

## 🎯 Purpose

The purpose of these workflows is to demonstrate how **n8n can orchestrate an AI-powered WhatsApp sales system** by connecting conversational AI with business processes and data sources.
