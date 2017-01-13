class CustomAttributeResolver

  def initialize(model)
    @model = model
  end

  def call
    ProfileField.all.map do |field|
      ActiveDynamic::AttributeDefinition.new(field.name, field.datatype)
    end
  end

private

  attr_reader :model

end