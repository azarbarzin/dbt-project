{% set tabletype="orders" %}
{% set category=["Furniture", "Office", "Technology"] %}

select 
orderid,
case when category = '{{category}}' then orderprofit end as {{category}}_orderprofit

from {{ ref('stg_orders') }}

