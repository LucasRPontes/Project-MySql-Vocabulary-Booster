USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY),2) 'Média salarial' FROM employees E 
INNER JOIN  jobs J 
ON J.JOB_ID = E.JOB_ID 
WHERE JOB_TITLE = cargo;
END $$
DELIMITER ;
