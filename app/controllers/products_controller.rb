class ProductsController < ApplicationController
  before_action :find_product, except: [:index, :new, :create]

  def index
  	@products = Product.all.order(created_at: :desc)
  end

  def show
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)

    # @product.user = current_user

  	if @product.save
  		redirect_to product_path(@product), notice: "Producto guardado exitosamente"
  	else
      flash[:alert] = "Algo fallo al guardar, intente de nuevo"
  		render :new
  	end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
      flash[:notice] = "El producto ha sido actualizado exitosamente"
    else
      flash[:alert] = "Algo fallo al editar, intente de nuevo"
      render :edit
    end
  end

  def destroy
    @product.destroy

    flash[:notice] = "El producto ha sido eliminado exitosamente"
    redirect_to products_path
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :description, :price, :image_product, :user_id, :color)
  	end

    def find_product
      @product = Product.find(params[:id])
    end
end
