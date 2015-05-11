## Books controller
##
##

class BooksController < ApplicationController

  # Get /books
  # Currently set root path to this
  def index
<<<<<<< HEAD

  end
=======
  end

  # Get /books/:id
  def show
    @book = Book.where(id: params[:id]).first
  end

>>>>>>> 160281050086cf9043d6e2c95551516cbca85a6a
end