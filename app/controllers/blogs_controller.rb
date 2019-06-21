class BlogsController < ApplicationController
  def index
  end

  def new
  end

  def create
  	## aqui hace el guardado a la base de datos y una vez termine
  	redirect_to blogs_path
  end

  def show
  end

  def edit
  end

  

  

  def update
  end

  def destroy
  end
end
