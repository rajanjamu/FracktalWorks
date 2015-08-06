class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :index, :edit]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @users = User.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update!(order_params)
    redirect_to action: "index"
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to action: "index"
  end

  private
    def order_params
      params.require(:order).permit(:title, :status, :completed, :attachment, :user_id)
    end

    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "Please log in"
        redirect_to root_path
      end
    end
end
