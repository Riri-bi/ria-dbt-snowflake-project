with users as (
    select * from {{ ref('stg_users')}}

)

select
    user_id,
    initcap(first_name) ||' '|| initcap(last_name) as full_name,
    email,
    signup_date

from users