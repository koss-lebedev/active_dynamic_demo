class ProfileFieldsController < ApplicationController
  before_action :set_profile_field, only: [:show, :edit, :update, :destroy]

  def index
    @profile_fields = ProfileField.all
  end

  def show
  end

  def new
    @profile_field = ProfileField.new
  end

  def edit
  end

  def create
    @profile_field = ProfileField.new(profile_field_params)
    if @profile_field.save
      redirect_to @profile_field, notice: 'Profile field was successfully created.'
    else
      render :new
    end
  end

  def update
    if @profile_field.update(profile_field_params)
      redirect_to @profile_field, notice: 'Profile field was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @profile_field.destroy
    redirect_to profile_fields_url, notice: 'Profile field was successfully destroyed.'
  end

  private

    def set_profile_field
      @profile_field = ProfileField.find(params[:id])
    end

    def profile_field_params
      params.require(:profile_field).permit(:name, :datatype)
    end
end
