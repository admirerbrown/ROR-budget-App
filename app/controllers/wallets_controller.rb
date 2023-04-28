class WalletsController < ApplicationController
  before_action :authenticate_user!
  def index
    @expenses = Wallet.where(author_id: current_user).includes(Groups_wallets: [:group],
                                                               group_id: params[:id]).order(created_at: :desc)
  end
end
