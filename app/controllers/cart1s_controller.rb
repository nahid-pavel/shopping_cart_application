class Cart1sController < ApplicationController

  skip_before_action :authorize, only: [:create, :update, :destroy]
  before_action :set_cart1, only: [:show, :edit, :update, :destroy]
  
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  # GET /cart1s
  # GET /cart1s.json
  def index
    @cart1s = Cart1.all
  end

  # GET /cart1s/1
  # GET /cart1s/1.json
  def show
  end

  # GET /cart1s/new
  def new
    @cart1 = Cart1.new
  end

  # GET /cart1s/1/edit
  def edit
  end

  # POST /cart1s
  # POST /cart1s.json
  def create
    @cart1 = Cart1.new(cart1_params)

    respond_to do |format|
      if @cart1.save
        format.html { redirect_to @cart1, notice: 'Cart1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cart1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @cart1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart1s/1
  # PATCH/PUT /cart1s/1.json
  def update
    respond_to do |format|
      if @cart1.update(cart1_params)
        format.html { redirect_to @cart1, notice: 'Cart1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cart1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart1s/1
  # DELETE /cart1s/1.json
  def destroy
    @cart1.destroy
    respond_to do |format|
      format.html { redirect_to store_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart1
      @cart1 = Cart1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart1_params
      params[:cart1]
    end
	
	
	def invalid_cart
	   logger.error "Attemp to access invalid cart #{params[:id]}"
	   
	   redirect_to store_url, notice:"Invalid Cart"
	  
	
	end
end
