class GameCategoriesController < ApplicationController
  # GET /game_categories
  # GET /game_categories.json
  def index
    @game_categories = GameCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_categories }
    end
  end

  # GET /game_categories/1
  # GET /game_categories/1.json
  def show
    @game_category = GameCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_category }
    end
  end

  # GET /game_categories/new
  # GET /game_categories/new.json
  def new
    @game_category = GameCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_category }
    end
  end

  # GET /game_categories/1/edit
  def edit
    @game_category = GameCategory.find(params[:id])
  end

  # POST /game_categories
  # POST /game_categories.json
  def create
    @game_category = GameCategory.new(params[:game_category])

    respond_to do |format|
      if @game_category.save
        format.html { redirect_to @game_category, notice: 'Game category was successfully created.' }
        format.json { render json: @game_category, status: :created, location: @game_category }
      else
        format.html { render action: "new" }
        format.json { render json: @game_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_categories/1
  # PUT /game_categories/1.json
  def update
    @game_category = GameCategory.find(params[:id])

    respond_to do |format|
      if @game_category.update_attributes(params[:game_category])
        format.html { redirect_to @game_category, notice: 'Game category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_categories/1
  # DELETE /game_categories/1.json
  def destroy
    @game_category = GameCategory.find(params[:id])
    @game_category.destroy

    respond_to do |format|
      format.html { redirect_to game_categories_url }
      format.json { head :no_content }
    end
  end
end
