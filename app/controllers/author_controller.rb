class AuthorController < ApplicationController
    
    def index
        @author=Author.all
    end

    def edit
    end

    def new 
    end

    def show
        @author=Author.find(params[:id])
    end

    def destroy
    end

    def update
    end

    def create
    end
end
