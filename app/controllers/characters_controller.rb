class CharactersController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            render json: CharacterSerializer.new(@user.characters).serialized_json
        else
            @characters = Character.all

            render json: CharacterSerializer.new(@characters).serialized_json
        end
    end

    def show
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @character = @user.characters.find_by(params[:character_id])
            render json: CharacterSerializer.new(@character).serialized_json
        else
            @character = Character.find_by(id: params[:id])
            render json: CharacterSerializer.new(@character).serialized_json
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :user_id, :race, :character_class, :bio, :img)
    end
end
