with source as (
    select * from {{ source('raw','raw_orders')}}
)

select
    order_id,
    user_id,
    order_date,
    amount

from source