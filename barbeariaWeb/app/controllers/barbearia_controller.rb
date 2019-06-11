class BarbeariaController < ApplicationController
  before_action :set_barbearium, only: [:show, :edit, :update, :destroy]

  # GET /barbearia
  # GET /barbearia.json
  def index
    @barbearia = Barbearium.all
  end

  # GET /barbearia/1
  # GET /barbearia/1.json
  def show
  end

  # GET /barbearia/new
  def new
    @barbearium = Barbearium.new
  end

  # GET /barbearia/1/edit
  def edit
  end

  # POST /barbearia
  # POST /barbearia.json
  def create
    @barbearium = Barbearium.new(barbearium_params)

    respond_to do |format|
      if @barbearium.save
        format.html { redirect_to @barbearium, notice: 'Barbearium was successfully created.' }
        format.json { render :show, status: :created, location: @barbearium }
      else
        format.html { render :new }
        format.json { render json: @barbearium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barbearia/1
  # PATCH/PUT /barbearia/1.json
  def update
    respond_to do |format|
      if @barbearium.update(barbearium_params)
        format.html { redirect_to @barbearium, notice: 'Barbearium was successfully updated.' }
        format.json { render :show, status: :ok, location: @barbearium }
      else
        format.html { render :edit }
        format.json { render json: @barbearium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barbearia/1
  # DELETE /barbearia/1.json
  def destroy
    @barbearium.destroy
    respond_to do |format|
      format.html { redirect_to barbearia_url, notice: 'Barbearium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barbearium
      @barbearium = Barbearium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barbearium_params
      params.require(:barbearium).permit(:nome, :contato, :usuario_id, :id, :endereco_id)
    end
end
