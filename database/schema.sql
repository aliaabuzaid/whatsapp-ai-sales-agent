-- Simplified portfolio schema
-- This file contains demo structure only.
-- No production data or credentials are included.

CREATE TABLE products (
id UUID PRIMARY KEY,
name TEXT NOT NULL,
category TEXT,
price NUMERIC(12,2),
description TEXT,
image_url TEXT,
keywords TEXT[]
);

CREATE TABLE product_variants (
id UUID PRIMARY KEY,
product_id UUID REFERENCES products(id),
sku TEXT UNIQUE,
price NUMERIC(12,2),
stock_quantity INTEGER DEFAULT 0
);

CREATE TABLE customers (
id UUID PRIMARY KEY,
name TEXT,
phone TEXT UNIQUE,
address TEXT,
created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE delivery_zones (
id UUID PRIMARY KEY,
zone_name TEXT NOT NULL,
delivery_fee NUMERIC(12,2) NOT NULL,
estimated_delivery TEXT
);

CREATE TABLE orders (
id UUID PRIMARY KEY,
customer_id UUID REFERENCES customers(id),
status TEXT DEFAULT 'pending',
payment_method TEXT,
delivery_zone_id UUID REFERENCES delivery_zones(id),
total_amount NUMERIC(12,2),
created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE order_items (
id UUID PRIMARY KEY,
order_id UUID REFERENCES orders(id),
product_id UUID REFERENCES products(id),
quantity INTEGER NOT NULL,
unit_price NUMERIC(12,2) NOT NULL
);
