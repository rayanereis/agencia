RSpec::Matchers.define :have_unique do |field_name|
  match do |model_object|
    factory_name = model_object.class.name.underscore.to_sym
    created = FactoryGirl.create(factory_name)
    objekt = FactoryGirl.build(factory_name, field_name => created.send(field_name).to_s)
    objekt.valid?
    objekt.errors[field_name].any?
  end
end
