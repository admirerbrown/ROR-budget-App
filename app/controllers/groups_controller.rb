class GroupsController < ApplicationController
  def index
    @categories = Group.where(user_id: current_user)
  end

  def new
    @category = Group.new
  end

  def show
    @group_expenses = Group.find(params[:id]).wallets.order(created_at: :desc)
    @group_id = params[:id]
  end

  def create
    @category = Group.new(category_params)
    @category.user_id = current_user.id

    if @category.save
      flash[:notice] = 'category Added successfully!'
      redirect_to '/categories'
    else
      flash[:alert] = "Couln't Add category Please Try Again!"
      render :new, status: :unprocessable_entity
    end
  end

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
