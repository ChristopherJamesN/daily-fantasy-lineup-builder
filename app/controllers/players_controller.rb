class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players or GET lineups/id:/players if linking from a lineup show page.
  # GET /players.json
  def index
    if params[:lineup_id]
      @players = Lineup.find(params[:lineup_id]).players
      @lineup = Lineup.find(params[:lineup_id])
    else
      @players = Player.all
    end
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @lineups_players = LineupsPlayer.where(player_id: @player.id)
  end

  # GET /players/new or GET lineups/id:/players/new if linking from a lineup show page.
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    authenticate_user!
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    authenticate_user!
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    authenticate_user!
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :position, :projectedPoints, :actualPoints, lineup_ids:[], lineups_players_attributes: [:player_starting, :lineup_id, :id])
    end
end
