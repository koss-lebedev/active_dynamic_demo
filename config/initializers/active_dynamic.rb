ActiveDynamic.configure do |config|

  # Specify class in your application responsible for resolving dynamic properties for your model.
  # this class should accept `model` as the only constructor parameter, and have a `call` method
  # that returns an array of AttributeDefinition objects
  config.provider_class = ContactAttributeProvider

end