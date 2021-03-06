class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  # GET /states
  # GET /states.json
  def index
    country = Country.find(params[:country_id])
    @states = country.states 
  end

  # GET /states/1
  # GET /states/1.json
  def show
    country = Country.find(params[:country_id])
    @state = country.states.find(params[:id])

  end

  # GET /states/new
  def new
    country = Country.find(params[:country_id])
    @state = country.states.build
  end

  # GET /states/1/edit
  def edit
    country = Country.find(params[:country_id])
    @state = country.states.find(params[:id])

  end

  # POST /states
  # POST /states.json
  def create
    country = Country.find(params[:country_id])
    @state = country.states.create(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to country_state_path @state.country,@state, notice: 'State was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    country = Country.find(params[:country_id])
    @state = country.states.find(params[:id])
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to [@state.country,@state], notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @state }
      else
        format.html { render :edit }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    country = Country.find(params[:country_id])
    @state = country.states.find(params[:id])
    @state.destroy
    respond_to do |format|
      format.html { redirect_to country_states_url, notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:name, :no_pl_teams, :country_id)
    end
end
