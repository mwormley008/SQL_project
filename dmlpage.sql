CREATE OR REPLACE PROCEDURE add_customer(
    invoice_id INTEGER DEFAULT NULL,
    service_id INTEGER DEFAULT NULL
)
AS $$
BEGIN
    INSERT INTO Customer (invoice_id, service_id) VALUES (invoice_id, service_id);
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE add_service()
AS $$
BEGIN
    INSERT INTO Service DEFAULT VALUES;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_mechanic()
AS $$
BEGIN
    INSERT INTO Mechanic DEFAULT VALUES;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_service_car(
    service_id INTEGER
)
AS $$
BEGIN
    INSERT INTO Service_Car (service_id) VALUES (service_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_sales_car()
AS $$
BEGIN
    INSERT INTO Sales_Car DEFAULT VALUES;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_salesperson()
AS $$
BEGIN
    INSERT INTO Salesperson DEFAULT VALUES;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_car_mechanic(
    serial_number INTEGER,
    mechanic_id INTEGER
)
AS $$
BEGIN
    INSERT INTO car_mechanic (serial_number, mechanic_id) VALUES (serial_number, mechanic_id);
END;
$$ LANGUAGE plpgsql;

SELECT table_name FROM information_schema.tables WHERE table_schema='public';



CALL add_customer(1, Null);
CALL add_customer(NULL, 1);
CALL add_service();
CALL add_service();
CALL add_mechanic();
CALL add_mechanic();
CALL add_service_car(1);
CALL add_service_car(2);
CALL add_sales_car();
CALL add_sales_car();
CALL add_salesperson();
CALL add_salesperson();
--CALL add_car_mechanic(4, 5);
--CALL add_car_mechanic(4, 5);
