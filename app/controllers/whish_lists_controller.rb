class WhishListsController < ApplicationController
  before_action :set_whish_list, only: %i[ show edit update destroy ]

  # GET /whish_lists or /whish_lists.json
  def index
    @whish_lists = WhishList.all
  end

  # GET /whish_lists/1 or /whish_lists/1.json
  def show
  end

  # GET /whish_lists/new
  def new
    @whish_list = WhishList.new
  end

  # GET /whish_lists/1/edit
  def edit
  end

  # POST /whish_lists or /whish_lists.json
  def create
    @whish_list = WhishList.new(whish_list_params)

    respond_to do |format|
      if @whish_list.save
        format.html { redirect_to whish_list_url(@whish_list), notice: "Whish list was successfully created." }
        format.json { render :show, status: :created, location: @whish_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @whish_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whish_lists/1 or /whish_lists/1.json
  def update
    respond_to do |format|
      if @whish_list.update(whish_list_params)
        format.html { redirect_to whish_list_url(@whish_list), notice: "Whish list was successfully updated." }
        format.json { render :show, status: :ok, location: @whish_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @whish_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whish_lists/1 or /whish_lists/1.json
  def destroy
    @whish_list.destroy

    respond_to do |format|
      format.html { redirect_to whish_lists_url, notice: "Whish list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whish_list
      @whish_list = WhishList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def whish_list_params
      params.require(:whish_list).permit(:title)
    end
end
