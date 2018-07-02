class DogsController < ApplicationController
    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)

        if @dog.save
            redirect_to @dog
        else
            render 'new'
        end
    end

    def show
        @dog = Dog.find(params[:id])
    end

    private
        def dog_params
            params.require(:dog).permit(:title)
        end
end
