with payment_method_count as (
    select 
        payment_method,
        count(1) as total_count
    from 
        {{ref("rw_transaction")}}
    group by payment_method
)
select 
    b.payment_method_description,
    a.total_count
from payment_method_count a
inner join {{ ref("payment_method_mapping") }} b 
on a.payment_method = b.payment_method