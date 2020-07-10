class Api::ProductsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "#{params[:search]}")
    else
      @products = Product.all
    end
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      #happy path
      render "show.json.jb"
    else
      #sad path
      render "errors.json.jb", status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "You done destroyed it." }
  end

  def is_discounted?
    "This should print."
  end
end
