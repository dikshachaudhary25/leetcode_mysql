select t.id as Id from Weather as t join Weather as w ON t.recordDate = DATE_ADD(w.recordDate, INTERVAL 1 DAY) where t.temperature>w.temperature;
