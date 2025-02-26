{% macro cast_to_date(column_name) -%}
    cast({{column_name}} as date)
{%- endmacro %}