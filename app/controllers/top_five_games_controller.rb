class TopFiveGamesController < ApplicationController
  # GET /top_five_games
  # GET /top_five_games.json
  def index
    @top_five_games = TopFiveGame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @top_five_games }
    end
  end

  # GET /top_five_games/1
  # GET /top_five_games/1.json
  def show
    @top_five_game = TopFiveGame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @top_five_game }
    end
  end

  # GET /top_five_games/new
  # GET /top_five_games/new.json
  def new
    @top_five_game = TopFiveGame.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @top_five_game }
    end
  end

  # GET /top_five_games/1/edit
  def edit
    @top_five_game = TopFiveGame.find(params[:id])
  end

  # POST /top_five_games
  # POST /top_five_games.json
  def create
    @top_five_game = TopFiveGame.new(params[:top_five_game])

    respond_to do |format|
      if @top_five_game.save
        format.html { redirect_to @top_five_game, notice: 'Top five game was successfully created.' }
        format.json { render json: @top_five_game, status: :created, location: @top_five_game }
      else
        format.html { render action: "new" }
        format.json { render json: @top_five_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /top_five_games/1
  # PUT /top_five_games/1.json
  def update
    @top_five_game = TopFiveGame.find(params[:id])

    respond_to do |format|
      if @top_five_game.update_attributes(params[:top_five_game])
        format.html { redirect_to @top_five_game, notice: 'Top five game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @top_five_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_five_games/1
  # DELETE /top_five_games/1.json
  def destroy
    @top_five_game = TopFiveGame.find(params[:id])
    @top_five_game.destroy

    respond_to do |format|
      format.html { redirect_to top_five_games_url }
      format.json { head :no_content }
    end
  end
end
