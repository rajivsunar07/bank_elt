
select 
    account_id
from {{ source("transaction_data", "transaction_table") }}
{% if var("txn_type") == 'Deposit' %}
WHERE amount > 1000
{% endif %}