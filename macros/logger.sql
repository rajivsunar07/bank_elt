{%  macro log_run(run_action) -%}

insert into public.logger (log_message) values ('{{ run_action }}');

{%- endmacro %}
