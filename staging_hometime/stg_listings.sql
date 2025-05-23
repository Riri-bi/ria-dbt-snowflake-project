{{ config(materialized='view')}}

with source as (
    select * from {{ source('raw', 'raw_listings')}}
),

renamed as (
    select
        listing_id,
        host_name,
        property_type,
        city,
        bedrooms

    from source
)

select * from renamed