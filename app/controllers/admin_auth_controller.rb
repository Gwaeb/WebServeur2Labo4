#Gabriel Meunier 10/11/21
class AdminAuthController < ApplicationController 
    layout "application"
    before_action :authenticate_user!
    before_action :is_admin?

    private 
    def is_admin?
        unless current_user.is_admin
            redirect_to root_path
        end
    end
end