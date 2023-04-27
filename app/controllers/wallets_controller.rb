class WalletsController < ApplicationController
  def index
    @expenses = Wallet.where(author_id: current_user).includes(Groups_wallets: [:group],
                                                               group_id: params[:id]).order(created_at: :desc)
  end

  # def new
  #   @expense = Wallet.new
  # end

  # def create
  #   @groups = Group.where(user_id: current_user)
  #   @expense = Wallet.new(name: expense_params[:name], author_id: current_user.id, amount: expense_params[:amount])

  #   if @expense.save
  #     GroupWallet.new(expense_id: expense.id, group_id: params[:group])
  #     flash[:notice] = 'expense added'
  #     redirect_to group_path(params[:group])
  #   else
  #     flash[:notice] = 'Error during creation'
  #   end
  # end

  # private

  # def expense_params
  #   params.require(:wallet).permit(:name, :amount)
  # end
end
