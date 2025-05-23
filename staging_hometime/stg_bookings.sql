{{ config(materialized='view')}}

with source as (
    select * from {{ source('raw', 'raw_bookings')}}
),

renamed as (
    select
        booking_id,
        listing_id,
        check_in,
        check_out,
        nightly_rate

    from source
)

select * from renamed