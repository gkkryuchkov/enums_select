module EnumsSelect
  module FormHelper
    def enum_select(object_name, method, enum, options = {}, html_options = {})
      model = object_name.to_s.camelize.constantize
      collection = model.public_send(enum.to_s.pluralize).keys.map do |key|
        [model.public_send("human_#{enum}", key), key]
      end

      select(object_name, method, collection, options, html_options)
    end
  end
end