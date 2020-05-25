class ReviewersController < ApplicationController
  before_action :set_reviewer, only: [:show, :edit, :update, :destroy]
  skip_before_action :ensure_login, only: [:new,:create]
  # GET /reviewers
  # GET /reviewers.json

  def index
    @reviewers = Reviewer.all
  end

  # GET /reviewers/1
  # GET /reviewers/1.json
  def show
  end

  # GET /reviewers/new
  def new
    @reviewer = Reviewer.new
  end

  # GET /reviewers/1/edit
  def edit
  end

  # POST /reviewers
  # POST /reviewers.json
  def create

    @reviewer = Reviewer.new(reviewer_params)

    respond_to do |format|
      if @reviewer.save
        format.html { redirect_to @reviewer, notice: 'Reviewer was successfully created.' }
        format.json { render :show, status: :created, location: @reviewer }
      else
        format.html { render :new }
        format.json { render json: @reviewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviewers/1
  # PATCH/PUT /reviewers/1.json
  def update
    respond_to do |format|
      if @reviewer.update(reviewer_params)
        format.html { redirect_to @reviewer, notice: 'Reviewer was successfully updated.' }
        format.json { render :show, status: :ok, location: @reviewer }
      else
        format.html { render :edit }
        format.json { render json: @reviewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviewers/1
  # DELETE /reviewers/1.json
  def destroy
    @reviewer.destroy
    respond_to do |format|
      format.html { redirect_to reviewers_url, notice: 'Reviewer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviewer
      @reviewer = Reviewer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reviewer_params
      params.require(:reviewer).permit(:name, :password, :password_confirmation)
    end
end
