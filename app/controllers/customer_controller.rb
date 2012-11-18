class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
    
    def new
    @customer = Customer.new
  end

  # GET /orders/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @customer = Customer.new(params[:customer])
      if @customer.save
        format.html  { redirect_to(@customer, :notice => 'Customer was successfully created.') }
      else
         format.html { render :action => "new"}
      end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @customer = Customer.find(params[:id])

      if @customer.update_attributes(params[:customer])
        redirect_to :action => :index
      else
        format.html { render action: "edit" }
      end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to :action => :index
  end
end