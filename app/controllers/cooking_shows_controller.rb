class CookingShowsController < ApplicationController
  before_action :set_cooking_show, only: [:show, :edit, :update, :destroy]

  # GET /cooking_shows
  # GET /cooking_shows.json
  def index
    @cooking_shows = CookingShow.all
  end

  # GET /cooking_shows/1
  # GET /cooking_shows/1.json
  def show
  end

  # GET /cooking_shows/new
  def new
    @cooking_show = CookingShow.new
  end

  # GET /cooking_shows/1/edit
  def edit
  end

  # POST /cooking_shows
  # POST /cooking_shows.json
  def create
    @cooking_show = CookingShow.new(cooking_show_params)

    respond_to do |format|
      if @cooking_show.save
        format.html { redirect_to @cooking_show, notice: 'Cooking show was successfully created.' }
        format.json { render :show, status: :created, location: @cooking_show }
      else
        format.html { render :new }
        format.json { render json: @cooking_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooking_shows/1
  # PATCH/PUT /cooking_shows/1.json
  def update
    respond_to do |format|
      if @cooking_show.update(cooking_show_params)
        format.html { redirect_to @cooking_show, notice: 'Cooking show was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooking_show }
      else
        format.html { render :edit }
        format.json { render json: @cooking_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooking_shows/1
  # DELETE /cooking_shows/1.json
  def destroy
    @cooking_show.destroy
    respond_to do |format|
      format.html { redirect_to cooking_shows_url, notice: 'Cooking show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooking_show
      @cooking_show = CookingShow.find(params[:id])
      @comments = @cooking_show.comments.all
      @comment = @cooking_show.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooking_show_params
      params.require(:cooking_show).permit(:name, :country, :description, :years, :picture)
    end
end
