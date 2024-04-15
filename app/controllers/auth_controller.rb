# app/controllers/auth_controller.rb
class AuthController < ApplicationController
  puts "\n\nrota auth\n\n"
  # puts :authenticate_admin!
  before_action :authenticate_admin!
  # puts "asfnasbfahs"
  skip_before_action :verify_authenticity_token
  
  def verify_token
    puts "função auth"
    # if authorize_admin?()
    head :ok  
    # else
      # head :unauthorized
    # end
  end

  # private


  # def authorize_admin?
  #   puts 'entrou no AUTHHHHHHHHHHHHHHHHHHHH'
  #   puts current_user
  #   if current_user.admin?
  #     return true
  #   else
  #     return false
  #   end
  # end

end