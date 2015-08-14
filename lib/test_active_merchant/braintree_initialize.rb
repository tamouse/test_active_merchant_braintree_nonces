require "yaml"
require "erb"
require "braintree"

module TestActiveMerchant
  class BraintreeInitialize

    attr_reader :configuration

    def initialize(config_file: File.expand_path("../../../config/braintree.yml", __FILE__))
      @configuration = load_configuration(config_file)
      configure_braintree
    end

    def load_configuration(config_file)
      env = ENV['ENVIRONMENT'] ||= 'development'
      c = YAML.load(ERB.new(File.read(config_file)).result)[env].map do |k,v|
        [k.to_sym, v]
      end.to_h
      c[:environment] = c[:environment].to_s.to_sym
      c
    end

    def configure_braintree
      config = configuration
    end
  end
end
