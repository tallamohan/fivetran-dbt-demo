select
    id,
    user_id,
    product_id,
    case
        when purchased_at is null or purchased_at = 'None' then null
        else cast(purchased_at as timestamp)
    end as purchased_at,
    case
        when returned_at is null or returned_at = 'None' then null
        else cast(returned_at as timestamp)
    end as returned_at,
    cast(created_at as timestamp) as created_at,
    updated_at,
    added_to_cart_at
from {{ source('fivetran_dbt', 'google_sheets_ecom_purchases') }}
