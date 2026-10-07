DECLARE
    CURSOR c_top5 IS
        SELECT name, salary
        FROM (
            SELECT name, salary
            FROM Staff
            ORDER BY salary DESC
        )
        WHERE ROWNUM <= 5;

    v_name   Staff.name%TYPE;
    v_salary Staff.salary%TYPE;
BEGIN
    OPEN c_top5;

    LOOP
        FETCH c_top5 INTO v_name, v_salary;
        EXIT WHEN c_top5%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name ||
                             ' | Salary: ' || v_salary);
    END LOOP;

    CLOSE c_top5;
END;
/