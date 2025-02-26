
select 
    account_id,
    transaction_id, -- null as transaction_id,
    transaction_type, 
    amount,
    -- date('2025-02-28') as transaction_date,
    -- {{ cast_to_date('transaction_date') }} as transaction_date,
    cast(transaction_date as date) as transaction_date,
    payment_method as pay_method_some
from public.transaction_table -- {{ source("transaction_data", "transaction_table") }}

