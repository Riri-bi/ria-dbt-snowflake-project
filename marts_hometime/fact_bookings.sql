{{ config(materialized='view')}}

with bookings as (
    select * from {{ ref('stg_bookings')}}
),

listings as (
    select * from {{ ref('stg_listings')}}
),

joined as (
    select
        b.booking_id,
        b.listing_id,
        l.host_name,
        l.city,
        b.check_in,
        b.check_out,
        datediff('day', b.check_in, b.check_out) as length_of_stay,
        b.nightly_rate,
        b.nightly_rate * datediff('day',b.check_in,b.check_out) as total_amount

    from bookings b
    left join listings l on b.listing_id = l.listing_id
)

select * from joined