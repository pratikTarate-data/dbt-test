with orders as (
    select * from {{ ref ('stg_orders')}}
),

payments as (
    select * from {{ ref('stg_payments')}}
),

fct_orders as (
    select O.order_id,
    payment_id,
    amount 
    from orders O
    left join payments P on O.order_id = p.order_id
)

select * from fct_orders