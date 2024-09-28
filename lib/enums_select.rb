# frozen_string_literal: true

require_relative "enums_select/version"
require 'enums_select/application_record_extension'
require 'enums_select/form_helper'
require 'enums_select/railtie' if defined?(Rails)

module EnumsSelect
  class Error < StandardError; end
  # Your code goes here...
end
