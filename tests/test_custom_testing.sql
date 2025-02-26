with cte as (
    select 
        a.payment_method, b.pay_method_some
    from {{ref("payment_method_mapping")}} a 
    right join {{ ref("rw_transaction") }} b 
    on a.payment_method = b.pay_method_some
)
select payment_method
from cte 
where pay_method_some is null