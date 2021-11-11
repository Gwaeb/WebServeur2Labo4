#Gabriel Meunier 22/10/21
class Admin::AdminController < AdminAuthController 

    def showall
        @users = User.order(:nom)
        @recettes = Recette.order(:titre)
        respond_to do |format|
            format.html
        end
    end
    def showid
        @recette = Recette.find(params[:id]);
        respond_to do |format|
            format.html
        end
    end
end