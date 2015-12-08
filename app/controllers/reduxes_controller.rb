class ReduxesController < ApplicationController
  before_action :set_redux, only: [:show, :edit, :update, :destroy]

  # GET /reduxes
  # GET /reduxes.json
  def index
    @reduxes = Redux.all
  end

  # GET /reduxes/1
  # GET /reduxes/1.json
  def show
  end

  # GET /reduxes/new
  def new
    @redux = Redux.new
  end

  # GET /reduxes/1/edit
  def edit
  end

  # POST /reduxes
  # POST /reduxes.json
  def create
    @redux = Redux.new(redux_params)

    respond_to do |format|
      if @redux.save
        format.html { redirect_to @redux, notice: 'Redux was successfully created.' }
        format.json { render :show, status: :created, location: @redux }
      else
        format.html { render :new }
        format.json { render json: @redux.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reduxes/1
  # PATCH/PUT /reduxes/1.json
  def update
    respond_to do |format|
      if @redux.update(redux_params)
        format.html { redirect_to @redux, notice: 'Redux was successfully updated.' }
        format.json { render :show, status: :ok, location: @redux }
      else
        format.html { render :edit }
        format.json { render json: @redux.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reduxes/1
  # DELETE /reduxes/1.json
  def destroy
    @redux.destroy
    respond_to do |format|
      format.html { redirect_to reduxes_url, notice: 'Redux was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redux
      @redux = Redux.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redux_params
      params[:redux]
    end
end
