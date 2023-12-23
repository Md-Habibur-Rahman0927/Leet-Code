select `class` 
from (select `class`, count(distinct `student`) as `num`
     from `courses`
     group by `class`) as `tmp_table` 
where `num` >= 5;

# Write your MySQL query statement below
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;