-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(`id`) as `total_enrolments`, YEAR(`enrolment_date`) as `enrolment_year`
FROM `students` 
GROUP BY `enrolment_year`
ORDER BY `enrolment_year` ASC;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) as `total_teachers`, `office_address` as `building`
FROM `teachers` 
GROUP BY `building`
ORDER BY `building` ASC;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) AS `average_vote`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) as `total_degrees`, `department_id`
FROM `degrees`
GROUP BY `department_id`
ORDER BY `department_id` ASC