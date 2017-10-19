class LineupsController < ApplicationController
  before_action :set_lineup, only: [:show, :edit, :update, :destroy]

  # GET /lineups
  # GET /lineups.json
  def index
    @lineups = Lineup.all
  end

  # GET /lineups/1
  # GET /lineups/1.json
  def show
  end

  # GET /lineups/new
  def new
    @lineup = Lineup.new
  end

  # GET /lineups/1/edit
  def edit
  end

  # POST /lineups
  # POST /lineups.json
  def create
    @lineup = Lineup.new(lineup_params)
    @lineup.user_id = current_user.id
    current_user.lineups << @lineup

    respond_to do |format|
      if @lineup.save
        format.html { redirect_to @lineup, notice: 'Lineup was successfully created.' }
        format.json { render :show, status: :created, location: @lineup }
      else
        format.html { render :new }
        format.json { render json: @lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineups/1
  # PATCH/PUT /lineups/1.json
  def update
    if @lineup.user_id == current_user.id
      respond_to do |format|
        if @lineup.update(lineup_params)
          format.html { redirect_to @lineup, notice: 'Lineup was successfully updated.' }
          format.json { render :show, status: :ok, location: @lineup }
        else
          format.html { render :edit }
          format.json { render json: @lineup.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to @lineup, notice: 'Sorry, you cannot edit a lineup you did not create.' }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /lineups/1
  # DELETE /lineups/1.json
  def destroy
    if @lineup.user_id == current_user.id
      @lineup.destroy
      respond_to do |format|
        format.html { redirect_to lineups_url, notice: 'Lineup was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to lineups_url, notice: 'You cannot destroy a lineup you did not create.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineup
      @lineup = Lineup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineup_params
      params.require(:lineup).permit(:name, :description)
    end
end
