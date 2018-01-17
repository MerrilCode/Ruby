class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /pokemons
  # GET /pokemons.json
  def index
    trainer = Trainer.find(params[:trainer_id])
    @pokemons = trainer.pokemons
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.find(params[:trainer_id])
  end

  # GET /pokemons/new
  def new
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.build
  end

  # GET /pokemons/1/edit
  def edit
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.find(params[:id])
  end

  # POST /pokemons
  # POST /pokemons.json
  def create
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.create(pokemon_params)
    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to trainer_pokemon_path @pokemon.trainer, @pokemon, notice: 'Pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemons/1
  # PATCH/PUT /pokemons/1.json
  def update
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.find(params[:id])
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to [@pokemon.trainer, @pokemon], notice: 'Pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemons/1
  # DELETE /pokemons/1.json
  def destroy
    trainer = Trainer.find(params[:trainer_id])
    @pokemon = trainer.pokemons.find(params[:id])
    @pokemon.destroy
    respond_to do |format|
      format.html { redirect_to trainer_pokemons_url, notice: 'Pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:name, :breed, :bio, :lvl, :element)
    end
end
