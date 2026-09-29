select
    d1.listing_id
from
    {{ ref('dim_listings_cleansed')}} d1
join {{ ref('fct_reviews') }} f
    on d1.listing_id = f.listing_id
where
    d1.created_at > f.review_date 
