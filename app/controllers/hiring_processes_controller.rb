class HiringProcessesController < ApplicationController
  before_action :set_hiring_process, only: %i[ show edit update destroy ]

  # GET /hiring_processes or /hiring_processes.json
  def index
    @hiring_processes = HiringProcess.all
  end

  # GET /hiring_processes/1 or /hiring_processes/1.json
  def show
  end

  # GET /hiring_processes/new
  def new
    @hiring_process = HiringProcess.new
  end

  # GET /hiring_processes/1/edit
  def edit
  end

  # POST /hiring_processes or /hiring_processes.json
  def create
    @hiring_process = HiringProcess.new(hiring_process_params)

    respond_to do |format|
      if @hiring_process.save
        format.html { redirect_to @hiring_process, notice: "Hiring process was successfully created." }
        format.json { render :show, status: :created, location: @hiring_process }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hiring_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hiring_processes/1 or /hiring_processes/1.json
  def update
    respond_to do |format|
      if @hiring_process.update(hiring_process_params)
        format.html { redirect_to @hiring_process, notice: "Hiring process was successfully updated." }
        format.json { render :show, status: :ok, location: @hiring_process }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hiring_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hiring_processes/1 or /hiring_processes/1.json
  def destroy
    @hiring_process.destroy!

    respond_to do |format|
      format.html { redirect_to hiring_processes_path, status: :see_other, notice: "Hiring process was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hiring_process
      @hiring_process = HiringProcess.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def hiring_process_params
      params.expect(hiring_process: [ :company, :position, :recruiter, :status, :reached_me ])
    end
end
