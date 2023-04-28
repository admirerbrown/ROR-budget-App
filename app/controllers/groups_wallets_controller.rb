class GroupsWalletsController < ApplicationController
  before_action :authenticate_user!
  def new
    @wallet = Wallet.new
    @groups = current_user.groups
    @back_id = params[:id]
  end

  def create
    expense = Wallet.create(name: wallet_params[:name], author_id: current_user.id, amount: wallet_params[:amount])

    if expense.save
      GroupsWallet.create(wallet_id: expense.id, group_id: wallet_params[:group_id])

      flash[:notice] = 'expense Added successfully!'
      redirect_to group_path(wallet_params[:group_id])
    else
      puts expense.errors.full_messages
      flash[:alert] = "Couln't Add expense Please Try Again!"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def wallet_params
    params.require(:wallet).permit(:name, :amount, :group_id)
  end
end
