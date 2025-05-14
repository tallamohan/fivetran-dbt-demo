select
    id,
    gender,
    academic_degree,
    "title" as mtitle,
    nationality,
    age,
    name,
    email,
    created_at,
    updated_at
from {{ source('demo_user', 'ecommerce_users') }}
