USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EMAIL VARCHAR(100))
BEGIN
  SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  D.DEPARTMENT_NAME 'Departamento',
  J.JOB_TITLE 'Cargo'
  FROM employees E
  INNER JOIN job_history JH 
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  INNER JOIN jobs J 
  ON J.JOB_ID = JH.JOB_ID
  INNER JOIN departments D 
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
  WHERE E.EMAIL = EMAIL
  ORDER BY `Departamento`, `Cargo`;
END$$
DELIMITER ;
