#Gabriel Meunier 10/11/21
class MesrecettesController < ApplicationController 
    before_action :authenticate_user!

    def showrecettes
        @recettes = Recette.order(:titre)
        render 'mesrecettes/mesrecettes'
        #render html: 'allo'
    end

    def showrecetteid
        @recette = Recette.find(params[:id]);
        if current_user != @recette.user
            redirect_to '/mesrecettes' 
        else
            @ingredients = @recette.ingredients
            @recette_ingredients = @recette.recette_ingredients
            render 'mesrecettes/arecette'
        end
    end

    
end