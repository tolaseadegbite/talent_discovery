class IndicatedTalentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_indicated_talent, only: %i[ show edit update destroy ]

  # GET /indicated_talents or /indicated_talents.json
  def index
    @indicated_talents = IndicatedTalent.all.order(created_at: :asc)
  end

  # GET /indicated_talents/1 or /indicated_talents/1.json
  def show
  end

  # GET /indicated_talents/new
  def new
    @indicated_talent = IndicatedTalent.new
  end

  # GET /indicated_talents/1/edit
  def edit
  end

  # POST /indicated_talents or /indicated_talents.json
  def create
    @indicated_talent = current_user.indicated_talents.new(indicated_talent_params)

    respond_to do |format|
      if @indicated_talent.save
        format.html { redirect_to indicated_talents_path, notice: "Talent options was successfully created." }
        format.json { render :show, status: :created, location: @indicated_talent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @indicated_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicated_talents/1 or /indicated_talents/1.json
  def update
    if @indicated_talent.user == current_user
        if @indicated_talent.update(indicated_talent_params)
            redirect_to indicated_talents_path, notice: "Successfully updated"
        else
            render :edit, status: :unprocessable_entity
        end
    end
  end

  # DELETE /indicated_talents/1 or /indicated_talents/1.json
  def destroy
    if @indicated_talent.user == current_user
        @indicated_talent.destroy
        redirect_to indicated_talents_url, notice: "Successfully deleted"
    else
        redirect_to indicated_talents_path, alert: "You are not authorized"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicated_talent
      @indicated_talent = IndicatedTalent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def indicated_talent_params
      params.require(:indicated_talent).permit(:full_name, :matric_no, talent_options: [])
    end
end
