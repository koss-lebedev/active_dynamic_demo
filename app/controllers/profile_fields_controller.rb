class ProfileFieldsController < ApplicationController
  before_action :set_profile_field, only: [:show, :edit, :update, :destroy]

  # GET /profile_fields
  # GET /profile_fields.json
  def index
    @profile_fields = ProfileField.all
  end

  # GET /profile_fields/1
  # GET /profile_fields/1.json
  def show
  end

  # GET /profile_fields/new
  def new
    @profile_field = ProfileField.new
  end

  # GET /profile_fields/1/edit
  def edit
  end

  # POST /profile_fields
  # POST /profile_fields.json
  def create
    @profile_field = ProfileField.new(profile_field_params)

    respond_to do |format|
      if @profile_field.save
        format.html { redirect_to @profile_field, notice: 'Profile field was successfully created.' }
        format.json { render :show, status: :created, location: @profile_field }
      else
        format.html { render :new }
        format.json { render json: @profile_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_fields/1
  # PATCH/PUT /profile_fields/1.json
  def update
    respond_to do |format|
      if @profile_field.update(profile_field_params)
        format.html { redirect_to @profile_field, notice: 'Profile field was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_field }
      else
        format.html { render :edit }
        format.json { render json: @profile_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_fields/1
  # DELETE /profile_fields/1.json
  def destroy
    @profile_field.destroy
    respond_to do |format|
      format.html { redirect_to profile_fields_url, notice: 'Profile field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_field
      @profile_field = ProfileField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_field_params
      params.require(:profile_field).permit(:name, :datatype)
    end
end
