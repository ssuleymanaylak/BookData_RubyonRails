class BooksController < ApplicationController
  def index
    @books = Book.all

    sleep 10
  end
end
