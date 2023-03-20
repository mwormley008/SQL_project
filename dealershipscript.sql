CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY
);

CREATE TABLE Service (
  service_id SERIAL PRIMARY KEY
);

CREATE TABLE Mechanic (
  mechanic_id SERIAL PRIMARY KEY
);

CREATE TABLE Service_Car (
  serial_number SERIAL PRIMARY KEY
);

CREATE TABLE Sales_Car (
  car_id SERIAL PRIMARY KEY
);

CREATE TABLE Salesperson (
  salesperson_id SERIAL PRIMARY KEY
);

-- Haha woops I forgot to add these in the first place, my bad.
ALTER TABLE customer ADD COLUMN invoice_id INTEGER;
ALTER TABLE customer ADD COLUMN service_id INTEGER;
alter TABLE customer
	ADD FOREIGN KEY(invoice_id) REFERENCES Invoice(invoice_id),
	ADD FOREIGN KEY(service_id) REFERENCES Service(service_id)
;

ALTER TABLE Invoice ADD COLUMN salesperson_id INTEGER;
ALTER TABLE Invoice ADD COLUMN car_id INTEGER;
alter TABLE Invoice
	ADD FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	ADD FOREIGN KEY(car_id) REFERENCES Sales_Car(car_id)
;


ALTER TABLE sales_car ADD COLUMN salesperson_id INTEGER;
ALTER TABLE sales_car ADD COLUMN customer_id INTEGER;
alter TABLE sales_car
	ADD FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
;


ALTER TABLE service_car ADD COLUMN service_id INTEGER;
alter TABLE service_car
	ADD FOREIGN KEY(service_id) REFERENCES service(service_id)
;


CREATE TABLE car_mechanic (
    serial_number INTEGER,
    mechanic_id INTEGER
);

alter TABLE car_mechanic
	ADD FOREIGN KEY(serial_number) REFERENCES service_car(serial_number),
	ADD FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
;