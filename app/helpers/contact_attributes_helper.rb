module ContactAttributesHelper

  DATATYPES = [
      ['string', ActiveDynamic::DataType::String],
      ['text', ActiveDynamic::DataType::Text],
      ['integer', ActiveDynamic::DataType::Integer],
      ['decimal', ActiveDynamic::DataType::Decimal]
  ]

  def datatypes_for_select
    DATATYPES
  end

  def datatype_label(datatype)
    DATATYPES.find{ |name, type| type == datatype }[0]
  end

end
