class WorktimesController < ApplicationController
  before_action :set_worktime, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /worktimes
  # GET /worktimes.json
  def index
    @worktimes = Worktime.all.order("datum DESC")
  end

  # GET /worktimes/1
  # GET /worktimes/1.json
  def show
  end

  # GET /worktimes/new
  def new
    @worktime = current_user.worktimes.build
  end

  # GET /worktimes/1/edit
  def edit
  end

  # POST /worktimes
  # POST /worktimes.json
  def create
    @worktime = current_user.worktimes.build(worktime_params)
    @worktime.datum = Date.current
    
    respond_to do |format|
      if @worktime.save
        format.html { redirect_to @worktime, notice: 'Worktime was successfully created.' }
        format.json { render :show, status: :created, location: @worktime }
      else
        format.html { render :new }
        format.json { render json: @worktime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worktimes/1
  # PATCH/PUT /worktimes/1.json
  def update
    respond_to do |format|
      if @worktime.update(worktime_params)
        format.html { redirect_to @worktime, notice: 'Worktime was successfully updated.' }
        format.json { render :show, status: :ok, location: @worktime }
      else
        format.html { render :edit }
        format.json { render json: @worktime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worktimes/1
  # DELETE /worktimes/1.json
  def destroy
    @worktime.destroy
    respond_to do |format|
      format.html { redirect_to worktimes_profile_path, notice: 'Worktime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def profile
    @worktimes_profile = Worktime.where(user_id: current_user.id).order("datum DESC")
    if current_user.admin == true
      @worktimes_admin = Worktime.all.order("datum DESC")
    end
  end

  private
    # Use callbacks to srake dhare common setup or constraints between actions.
    def set_worktime
      @worktime = Worktime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worktime_params
      params.require(:worktime).permit(:prihod, :odhod, :ure, :razlog_odhoda, :odhod_r, :prihod_r, :opombe, :work)
    end
end
