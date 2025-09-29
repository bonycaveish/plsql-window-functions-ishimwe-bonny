
INSERT INTO customers VALUES (1001, 'Alice Niyonsaba', 'Kigali');
INSERT INTO customers VALUES (1002, 'Eric Mugabo', 'Huye');
INSERT INTO customers VALUES (1003, 'Beata Uwase', 'Musanze');


INSERT INTO products VALUES (2001, 'Rugali Classic Beans 500g', 'Beans');
INSERT INTO products VALUES (2002, 'Rugali Premium Roast 250g', 'Roast');
INSERT INTO products VALUES (2003, 'Rugali Espresso Pack', 'Ground');


INSERT INTO transactions VALUES (3001, 1001, 2001, DATE '2025-08-14', 18500);
INSERT INTO transactions VALUES (3002, 1001, 2002, DATE '2025-08-20', 12500);
INSERT INTO transactions VALUES (3003, 1002, 2003, DATE '2025-09-01', 21000);
INSERT INTO transactions VALUES (3004, 1003, 2001, DATE '2025-09-05', 18500);
INSERT INTO transactions VALUES (3005, 1002, 2002, DATE '2025-09-08', 12500);
