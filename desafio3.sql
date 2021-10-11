SELECT JOB_TITLE 'Cargo', 
(MAX_SALARY - MIN_SALARY) 'Diferença entre salários máximo e mínimo' 
FROM jobs 
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE
;
