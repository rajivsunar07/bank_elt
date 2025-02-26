{{ config(materialized="table")}}
select 
    transaction_date as t_date, 
    ,,
    sum(amount) as total_amount
from {{ ref("rw_transaction") }}
group by transaction_date