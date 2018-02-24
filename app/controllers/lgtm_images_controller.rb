class LgtmImagesController < ApplicationController
  before_action :set_lgtm_image, only: [:show, :edit, :update, :destroy]

  # GET /lgtm_images
  # GET /lgtm_images.json
  def index
    @lgtm_images = LgtmImage.all
  end

  # GET /lgtm_images/1
  # GET /lgtm_images/1.json
  def show
  end

  # GET /lgtm_images/new
  def new
    @lgtm_image = LgtmImage.new
  end

  # GET /lgtm_images/1/edit
  def edit
  end

  # POST /lgtm_images
  # POST /lgtm_images.json
  def create
    @lgtm_image = LgtmImage.new(lgtm_image_params)

    respond_to do |format|
      if @lgtm_image.save
        format.html { redirect_to @lgtm_image, notice: 'Lgtm image was successfully created.' }
        format.json { render :show, status: :created, location: @lgtm_image }
      else
        format.html { render :new }
        format.json { render json: @lgtm_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lgtm_images/1
  # PATCH/PUT /lgtm_images/1.json
  def update
    respond_to do |format|
      if @lgtm_image.update(lgtm_image_params)
        format.html { redirect_to @lgtm_image, notice: 'Lgtm image was successfully updated.' }
        format.json { render :show, status: :ok, location: @lgtm_image }
      else
        format.html { render :edit }
        format.json { render json: @lgtm_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lgtm_images/1
  # DELETE /lgtm_images/1.json
  def destroy
    @lgtm_image.destroy
    respond_to do |format|
      format.html { redirect_to lgtm_images_url, notice: 'Lgtm image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lgtm_image
      @lgtm_image = LgtmImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lgtm_image_params
      params.require(:lgtm_image).permit(:url)
    end
end
