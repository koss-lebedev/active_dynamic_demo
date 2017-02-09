module ContactAttributesHelper

  DATATYPES = [
      ['string', ActiveDynamic::DataType::String],
      ['text', ActiveDynamic::DataType::Text],
      ['integer', ActiveDynamic::DataType::Integer]
  ]

  def datatypes_for_select
    DATATYPES
  end

  def datatype_label(datatype)
    DATATYPES.find{ |name, type| type == datatype }[0]
  end

  def dynamic_attribute_inputs(form, model)
    inputs = model.dynamic_attributes.map do |attr|
      options = {
          label: attr.display_name,
          as: datatype_mapping(attr.datatype)
      }
      form.input attr.name, options
    end

    safe_join inputs
  end

private

  def datatype_mapping(type)
    case type
      when ActiveDynamic::DataType::Text then :text
      when ActiveDynamic::DataType::Integer then :integer
      else :string
    end
  end

end
