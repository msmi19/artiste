class UsersController < ApplicationController
   def index
    @users = User.all
  end

  def show 
    @user = User.find(params[:id])
  end

  def create
    current_user.artoworks.create(artwork: current_artwork)

    @amount = (current_artwork.cost * 100).to_i

      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @amount,
        description: 'Artiste Premo Content',
        currency: 'usd'
      )

    redirect_to users_path(current_user)
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
  end
end
