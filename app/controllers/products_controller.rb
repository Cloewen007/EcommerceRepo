class ProductsController < ApplicationController
before_filter :require_sudo, :except =>[:index,:show]
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.create(params[:product])

      if @product.save
        redirect_to :action => :index
      else
        render :action => :new
      end
    end


  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

      if @product.update_attributes(params[:product])
        redirect_to :action => :index
        else
        format.html { render action: "edit" }
      end
    end


  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

  end
end
