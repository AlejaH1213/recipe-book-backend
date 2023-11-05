class CookbooksController < ApplicationController
    def index
        cookbooks = Cookbooks.all
        render json: cookbooks
    end
    def create
        cookbook = CookBook.create(cookbook_params)
        if cookbook.valid?
            render json: cookbook
        else
            render json: cookbook.errors, status: 422
        end
    end
    def update
    end
    def destroy
    end
    private
    def cookbook_params
        params.require(:cookbook).permit(:name, :picture, :difficulty, :prep_time, :total_time, :ingredients, :preparation, :notes, :user_id)
    end
end
