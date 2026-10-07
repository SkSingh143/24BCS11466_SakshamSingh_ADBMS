SET SERVEROUTPUT ON;

DECLARE
    CURSOR order_cursor IS
        SELECT Order_ID, Amount
        FROM Orders;

BEGIN
    FOR order_rec IN order_cursor LOOP

        IF order_rec.Amount > 10000 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Order ID: ' || order_rec.Order_ID || ' - High Value'
            );
        END IF;

    END LOOP;
END;
/