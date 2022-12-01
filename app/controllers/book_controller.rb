class BookController < ApplicationController
    def index
        @book=Book.all
    end

    def new
        @book=Book.new 
        # binding.pry
    end

    def edit
    end
    
    def show 
        @book=Author.find(params[:author_id]).books
    end

    def create
        @book=Book.new(get_params)
        if @book.save
            flash[:notice]="Book saved Successfully"
            redirect_to @book
        else
            render :new, status: :unprocessable_entity

        end
    end


    def destroy
    end

    def update
    end

   

    private

    def get_params
        params.require(:book).permit(:name, :descr, :author_id)
    end
    

end
