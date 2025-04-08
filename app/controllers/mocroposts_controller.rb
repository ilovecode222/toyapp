class MocropostsController < ApplicationController
  before_action :set_mocropost, only: %i[ show edit update destroy ]

  # GET /mocroposts or /mocroposts.json
  def index
    @mocroposts = Mocropost.all
  end

  # GET /mocroposts/1 or /mocroposts/1.json
  def show
  end

  # GET /mocroposts/new
  def new
    @mocropost = Mocropost.new
  end

  # GET /mocroposts/1/edit
  def edit
  end

  # POST /mocroposts or /mocroposts.json
  def create
    @mocropost = Mocropost.new(mocropost_params)

    respond_to do |format|
      if @mocropost.save
        format.html { redirect_to @mocropost, notice: "Mocropost was successfully created." }
        format.json { render :show, status: :created, location: @mocropost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mocropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mocroposts/1 or /mocroposts/1.json
  def update
    respond_to do |format|
      if @mocropost.update(mocropost_params)
        format.html { redirect_to @mocropost, notice: "Mocropost was successfully updated." }
        format.json { render :show, status: :ok, location: @mocropost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mocropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mocroposts/1 or /mocroposts/1.json
  def destroy
    @mocropost.destroy!

    respond_to do |format|
      format.html { redirect_to mocroposts_path, status: :see_other, notice: "Mocropost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mocropost
      @mocropost = Mocropost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mocropost_params
      params.require(:mocropost).permit(:content, :user_id)
    end
end
