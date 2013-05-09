class DashboardController < ApplicationController
  def index
    @jay = User.where(:name => 'Jay Tang').first
    @vera = User.where(:name => 'Vera Shen').first
  end
end
