class GratitudeJournalsController < ApplicationController
  before_action :set_gratitude_journal, only: [:show, :edit, :update, :destroy]

  # GET /gratitude_journals
  # GET /gratitude_journals.json
  def index
    @gratitude_journals = GratitudeJournal.all
  end

  # GET /gratitude_journals/1
  # GET /gratitude_journals/1.json
  def show
  end

  # GET /gratitude_journals/new
  def new
    set_user
    @gratitude_journal = @user.gratitude_journals.build
  end

  # GET /gratitude_journals/1/edit
  def edit
  end

  # POST /gratitude_journals
  # POST /gratitude_journals.json
  def create
    @gratitude_journal = GratitudeJournal.new(gratitude_journal_params)

    respond_to do |format|
      if @gratitude_journal.save
        format.html { redirect_to @gratitude_journal, notice: 'Gratitude journal was successfully created.' }
        format.json { render :show, status: :created, location: @gratitude_journal }
      else
        format.html { render :new }
        format.json { render json: @gratitude_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gratitude_journals/1
  # PATCH/PUT /gratitude_journals/1.json
  def update
    respond_to do |format|
      if @gratitude_journal.update(gratitude_journal_params)
        format.html { redirect_to @gratitude_journal, notice: 'Gratitude journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @gratitude_journal }
      else
        format.html { render :edit }
        format.json { render json: @gratitude_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gratitude_journals/1
  # DELETE /gratitude_journals/1.json
  def destroy
    @gratitude_journal.destroy
    respond_to do |format|
      format.html { redirect_to gratitude_journals_url, notice: 'Gratitude journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gratitude_journal
      @gratitude_journal = GratitudeJournal.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gratitude_journal_params
      params.require(:gratitude_journal).permit(:title, :content, :user_id)
    end
end
