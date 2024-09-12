
			--ВАРИАНТ 8, ВЛАДИМИРОВ АРТЕМ ВИКТОРОВИЧ--
			
			--ЗАДАНИЕ 1--
			
		SELECT * FROM BD_EMPLOYEES WHERE LAST_NAME ~ '^[A-Za-z]+(\s|-)[A-Za-z]+$';	
			
			--ЗАДАНИЕ 2--
			
		select LAST_NAME, FIRST_NAME, PHONE_NUMBER, EMAIL, DEPARTMENT_ID
		FROM BD_EMPLOYEES E JOIN BD_DEPARTMENTS D ON E.DEPARTMENT_ID=D.ID WHERE D.STREET !~ '^[0-9]+';
			--ЗАДАНИЕ 3--
		SELECT REGEXP_REPLACE(LAST_NAME, '[[:upper:]]','_',1,0) as mod_last_name, PHONE_NUMBER FROM BD_EMPLOYEES ;
			
			
			--ЗАДАНИЕ 4--
		SELECT * FROM BD_EMPLOYEES 
		WHERE  REGEXP_COUNT(FIRST_NAME, '[AaEeIiOoUuYyАаЕеЁёИиОоУуЫыЭэЮюЯя]')<=3; -- ЧИСЛО ВХОЖДЕНИЙ <3
			