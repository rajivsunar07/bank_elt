{% test does_not_have_date_greater_than_today(model, column_name) %}

with validation as (

    select
        {{ column_name }} as check_column

    from {{ model }}

),

validation_errors as (

    select
        check_column

    from validation
    where check_column > CURRENT_DATE

)

select *
from validation_errors

{% endtest %}