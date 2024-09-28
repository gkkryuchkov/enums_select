module EnumsSelect
  module ApplicationRecordExtension
    extend ActiveSupport::Concern

    included do
      strip_attributes
      has_paper_trail
    end

    class_methods do
      def enum_attributes(*attrs)
        attrs.each do |attr|
          define_singleton_method "human_#{attr}" do |val|
            return if val.blank?

            I18n.t("activerecord.attributes.#{model_name.param_key}.#{attr.to_s.pluralize}.#{val}")
          end

          define_method "human_#{attr}" do
            self.class.send("human_#{attr}", send(attr))
          end
        end
      end
    end
  end
end