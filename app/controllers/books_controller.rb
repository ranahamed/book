class BooksController < ApplicationController
  def home
  end

  def show
  	@book=Book.find(params[:id])
  end

  def new
  	@book=Book.new
  	@book.authors.build
  end

  def create
  	@book=Book.new(book_params)
  	if @book.save
      flash[:sucess]="new book is added"
  		redirect_to @book

  	else
  		render 'new'
  	end
  end

  private

    def book_params
      params.require(:book).permit(:title, :publisher, :isbn,
                                   :publishing_date , authors_attributes: [:id,:name,:_destroy])
    end

end
