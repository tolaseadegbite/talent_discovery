class DesiredTalentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_desired_talent, only: %i[ show edit update destroy ]

  # GET /desired_talents or /desired_talents.json
  def index
    @desired_talents = DesiredTalent.all.order(created_at: :asc)
  end

  # GET /desired_talents/1 or /desired_talents/1.json
  def show
  end

  # GET /desired_talents/new
  def new
    @desired_talent = DesiredTalent.new
  end

  # GET /desired_talents/1/edit
  def edit
  end

  # POST /desired_talents or /desired_talents.json
  def create
    @desired_talent = current_user.desired_talents.new(desired_talent_params)

    respond_to do |format|
      if @desired_talent.save
        format.html { redirect_to desired_talent_url(@desired_talent), notice: "Desired talent was successfully created." }
        format.json { render :show, status: :created, location: @desired_talent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desired_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desired_talents/1 or /desired_talents/1.json
  def update
    if @desired_talent.user == current_user
        if @desired_talent.update(desired_talent_params)
            redirect_to @desired_talent, notice: "Record successfully updated"
        else
            render :edit, status: :unprocessable_entity
        end
    end
  end

  # DELETE /desired_talents/1 or /desired_talents/1.json
  def destroy
    if @desired_talent.user == current_user
        @desired_talent.destroy
        redirect_to desired_talents_url, notice: "Record successfully deleted"
    else
        redirect_to desired_talents_path, alert: "You are not authorized"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desired_talent
      @desired_talent = DesiredTalent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desired_talent_params
      params.require(:desired_talent).permit(talent_options: [])
    end
end
