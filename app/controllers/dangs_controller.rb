class DangsController < ApplicationController
  before_action :set_dang, only: %i[ show edit update destroy ]

  # GET /dangs or /dangs.json
  def index
    @dangs = Dang.all
  end

  # GET /dangs/1 or /dangs/1.json
  def show
  end

  # GET /dangs/new
  def new
    @dang = Dang.new
  end

  # GET /dangs/1/edit
  def edit
  end

  # POST /dangs or /dangs.json
  def create
    @dang = Dang.new(dang_params)

    respond_to do |format|
      if @dang.save
        format.html { redirect_to dang_url(@dang), notice: "Dang was successfully created." }
        format.json { render :show, status: :created, location: @dang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dangs/1 or /dangs/1.json
  def update
    respond_to do |format|
      if @dang.update(dang_params)
        format.html { redirect_to dang_url(@dang), notice: "Dang was successfully updated." }
        format.json { render :show, status: :ok, location: @dang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dangs/1 or /dangs/1.json
  def destroy
    @dang.destroy!

    respond_to do |format|
      format.html { redirect_to dangs_url, notice: "Dang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dang
      @dang = Dang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dang_params
      params.require(:dang).permit(:title, :body)
    end
end
