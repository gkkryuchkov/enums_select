module EnumsSelect
  class Railtie < Rails::Railtie
    initializer 'your_gem_name.configure_rails_initialization' do
      ActiveSupport.on_load(:active_record) do
        include YourGemName::ApplicationRecordExtension
      end

      ActionView::Helpers::FormBuilder.include YourGemName::FormHelper
    end
  end
end