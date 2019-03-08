class ChargesController < ApplicationController
	
  def create
    # Amount in cents
    @amount = 500
    if (
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'usd',

      })
    
    )
    Inscription.create(user_id:current_user.id, event_id:params[:hidden], stripe_customer_id: customer.id)
    redirect_to "/events/#{params[:hidden]}"
    else  

      flash[:error] = Stripe::CardError.message
      redirect_to new_charge_path
    end


  end


end