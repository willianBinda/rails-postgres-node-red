# app/controllers/auth_controller.rb
class AuthController < ApplicationController
  puts 'rota auth'
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token
  
  def verify_token
    # if authorize_admin?()
    head :ok
    # else
      # head :unauthorized
    # end
  end

  private


  def authorize_admin?
    puts 'entrou no AUTHHHHHHHHHHHHHHHHHHHH'
    puts current_user.admin?
    if current_user.admin?
      return true
    else
      return false
    end
  end

end