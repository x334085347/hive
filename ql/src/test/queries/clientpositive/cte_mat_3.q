set hive.mapred.mode=nonstrict;
set hive.optimize.cte.materialize.threshold=2;

explain
with q1 as (select * from src where key= '5')
select a.key
from q1 a join q1 b
on a.key=b.key;
