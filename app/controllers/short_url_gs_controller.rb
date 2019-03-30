class ShortUrlGsController < ApplicationController
  before_action :set_short_url_g, only: [:show, :edit, :update, :destroy]

  def decode
    short_url = params[:short_url]
    id = find_id_from_short_url(short_url)
    su = ShortUrlG.find_by_id(id)
    redirect_to su.url

  end
  # GET /short_url_gs
  # GET /short_url_gs.json
  def index
    @short_url_gs = ShortUrlG.all
  end

  # GET /short_url_gs/1
  # GET /short_url_gs/1.json
  def show
  end

  # GET /short_url_gs/new
  def new
    @short_url_g = ShortUrlG.new
  end

  # GET /short_url_gs/1/edit
  def edit
  end

  # POST /short_url_gs
  # POST /short_url_gs.json
  def create
    @short_url_g = ShortUrlG.new(short_url_g_params)

    respond_to do |format|
      if @short_url_g.save
        format.html { redirect_to @short_url_g, notice: 'Short url g was successfully created.' }
        format.json { render :show, status: :created, location: @short_url_g }
      else
        format.html { render :new }
        format.json { render json: @short_url_g.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /short_url_gs/1
  # PATCH/PUT /short_url_gs/1.json
  def update
    respond_to do |format|
      if @short_url_g.update(short_url_g_params)
        format.html { redirect_to @short_url_g, notice: 'Short url g was successfully updated.' }
        format.json { render :show, status: :ok, location: @short_url_g }
      else
        format.html { render :edit }
        format.json { render json: @short_url_g.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_url_gs/1
  # DELETE /short_url_gs/1.json
  def destroy
    @short_url_g.destroy
    respond_to do |format|
      format.html { redirect_to short_url_gs_url, notice: 'Short url g was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_url_g
      @short_url_g = ShortUrlG.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_url_g_params
      params.require(:short_url_g).permit(:url)
    end

    def find_id_from_short_url(short_url)
      alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      hash=0
      short_url.each_char { |ch|
        hash=(hash*62)+(alphabet.index(ch)+1)
      }
      return hash
    end
end
