#Gabriel Meunier 20/10/21
class PublicController < ApplicationController 

    def showall
        @recettes = Recette.order(:titre)
        render 'public/home'
    end
    def showid        
        @recette = Recette.find(params[:id]);
        @ingredients = @recette.ingredients
        @recette_ingredients = @recette.recette_ingredients

        respond_to do |format|
            format.html { render 'public/detail'}
            format.json { render :json => @ingredients.to_json}
            format.xml { render :xml => @ingredients.as_json}
        end        
    end
end