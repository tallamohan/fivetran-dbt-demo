select
    id,
    "year" as myear,
    price,
    model,
    make,
    created_at,
    updated_at
from {{ source('demo_user', 'ecommerce_products') }}
