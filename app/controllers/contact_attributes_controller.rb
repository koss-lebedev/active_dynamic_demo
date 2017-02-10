class ContactAttributesController < ApplicationController
  before_action :set_contact_attribute, only: [:show, :edit, :update, :destroy]

  def index
    @contact_attributes = ContactAttribute.all
  end

  def show
  end

  def new
    @contact_attribute = ContactAttribute.new
  end

  def edit
  end

  def create
    @contact_attribute = ContactAttribute.new(contact_attribute_params)
    if @contact_attribute.save
      redirect_to @contact_attribute, notice: 'Contact attribute was successfully created.'
    else
      render :new
    end
  end

  def update
    if @contact_attribute.update(contact_attribute_params)
      redirect_to @contact_attribute, notice: 'Contact attribute was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @contact_attribute.destroy
    redirect_to contact_attributes_url, notice: 'Contact attribute was successfully destroyed.'
  end

  private

    def set_contact_attribute
      @contact_attribute = ContactAttribute.find(params[:id])
    end

    def contact_attribute_params
      params.require(:contact_attribute).permit(:name, :datatype, :required)
    end
end
