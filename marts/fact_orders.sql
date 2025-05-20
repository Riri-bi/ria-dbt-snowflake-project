with orders as (
    select * from {{ ref('stg_orders')}}
)

select 
    user_id,
    count(order_id) as total_orders,
    sum(amount) as 'Total Amount',
    min(order_date) as first_order_date,
    max(order_date) as last_order_date

from orders
group by user_id