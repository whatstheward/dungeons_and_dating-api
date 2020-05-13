class CharactersController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            render json: CharacterSerializer.new(@user.characters).serialized_json
        else
            @characters = Character.except_user(current_user)
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

    def create
        @character = Character.new(character_params)
        @character.user_id = params[:user_id]
        if @character.save
            @character.create_stat(stat_params)
            render json: CharacterSerializer.new(@character).serialized_json
        else
            render json: {errors: @character.errors.full_messages}
        end
    end

    private

    def character_params
        params.require(:options).permit(:name, :user_id, :race, :character_class, :bio, :image_id)
    end

    def stat_params
        params[:options][:stats].permit!
    end
end
