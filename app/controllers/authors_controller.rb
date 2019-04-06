class AuthorsController < ApplicationController
    
    def index
      @authors = Author.all
    end

    def new
      @author = Author.new
    end

    def show
      @author = Author.find(params[:id])
    end

    def create
      @author = Author.create(author_params)
      redirect_to @author, notice: 'Author was successfully created.'
    end

    def edit
      @author = Author.find(params[:id])
    end

    def update
      @author = Author.find(params[:id])
      @author.update_attributes(author_params)
      redirect_to @author, notice: 'Author was successfully updated.'
    end

    def destroy
      @author = Author.find(params[:id])
      @author.destroy
      redirect_back(fallback_location: root_path)
    end
    
    private

    def author_params
      params.require(:author).permit(:first_name, :last_name, :age)
    end
end
