class SequencesController < ApplicationController
  before_action :set_sequence, only: [:show, :edit, :update, :destroy]
  # GET /sequences
  # GET /sequences.json
  def index
    @tactic = Tactic.find(params[:tactic_id])
    @sequences = @tactic.sequences
  end

  # GET /sequences/1
  # GET /sequences/1.json
  def show
  end

  # GET /tactics/:tactic_id/sequences/new
  def new
    @sequence = Sequence.new
    @tactic = Tactic.find(params[:tactic_id])
  end

  # GET /sequences/1/edit
  def edit
  end

  # POST /tactics/:tactic_id/sequences
  def create
    @tactic = Tactic.find(params[:tactic_id])
    @sequence = @tactic.sequences.build(sequence_params)
    if @sequence.save
      redirect_to tactic_path(@tactic), notice: 'Sequence was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /sequences/1
  # PATCH/PUT /sequences/1.json
  def update
    respond_to do |format|
      if @sequence.update(sequence_params)
        format.html { redirect_to @sequence, notice: 'Sequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @sequence }
      else
        format.html { render :edit }
        format.json { render json: @sequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sequences/1
  # DELETE /sequences/1.json
  def destroy
    @sequence.destroy
    respond_to do |format|
      format.html { redirect_to sequences_url, notice: 'Sequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequence
      @sequence = Sequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sequence_params
      params.require(:sequence).permit(:id, :name)
    end
end
