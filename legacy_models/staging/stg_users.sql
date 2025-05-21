with source as (
    select * from {{ source('raw', 'raw_users')}}
)

select user_id,
        lower(first_name) as first_name,
        lower(last_name) as last_name,
        email,
        signup_date
from source