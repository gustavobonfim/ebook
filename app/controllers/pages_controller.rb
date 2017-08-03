class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard]

  def home
    if current_user
      redirect_to books_path
    end

    @books = Book.all
  end

  def dashboard
    @books = current_user.books

  end

  def clinicas

  end

end
