
CREATE TABLE customers (
    customer_id     NUMBER PRIMARY KEY,
    name            VARCHAR2(100) NOT NULL,
    region          VARCHAR2(50)  NOT NULL
);


CREATE TABLE products (
    product_id      NUMBER PRIMARY KEY,
    product_name    VARCHAR2(100) NOT NULL,
    category        VARCHAR2(50)  NOT NULL
);


CREATE TABLE transactions (
    transaction_id  NUMBER PRIMARY KEY,
    customer_id     NUMBER REFERENCES customers(customer_id),
    product_id      NUMBER REFERENCES products(product_id),
    sale_date       DATE NOT NULL,
    amount          NUMBER(10,2) NOT NULL
);
