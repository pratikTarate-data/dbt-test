with payments as (

    select 
        id as payment_id,
        order_id,
        paymentmethod,
        status,
        amount,
        created
    from raw.stripe.payment

)

select * from payments