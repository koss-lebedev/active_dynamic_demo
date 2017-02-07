class ContactAttributeProvider

  def initialize(model)
    @model = model
  end

  def call
    ContactAttribute.all.map do |field|
      ActiveDynamic::AttributeDefinition.new(field.name, field.datatype)
    end
  end

private

  attr_reader :model

end