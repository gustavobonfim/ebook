class TransactionsController < ApplicationController

  def create
    book = Book.find_by!(slug: params[:slug])
    token = params[:stripeToken]

    begin
      charge = Stripe::Charge.create(
          :card        => token,
          :amount      => book.price,
          :description => current_user.email,
          :currency    => 'usd'
        )

      @sale = book.sale.create!(buyer_email: current_user.email)
        redirect_to pickup_path(uuid: @sale.uuid)

      rescue Stripe::CardError => e
        flash[:notice] = e.message
        redirect_to book_path
    end
  end

  def pickup
    @sale = Sale.find_by!(uuid: params[:uuid])
    @book = @sale.book
  end
end
