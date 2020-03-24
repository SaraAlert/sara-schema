# frozen_string_literal: true

require 'sara-schema/version'
require 'sara-schema/schema_not_found_error'
require 'json_schemer'
require 'pathname'

RESOURCES = File.join(File.dirname(File.expand_path(__FILE__)), '../../schemas')

module SaraSchema
  class Validator
    class << self
      def validate(schema, to_be_validated)
        JSONSchemer.schema(path(schema)).valid?(to_be_validated)
      end

      def validate!(schema, to_be_validated)
        JSONSchemer.schema(path(schema)).validate(to_be_validated)
      end

      private

      def path(schema)
        file = "#{RESOURCES}/#{schema}.json"
        # rubocop:disable Metrics/LineLength
        # rubocop:disable Style/IfUnlessModifier
        raise SaraSchema::Validator::SchemaNotFoundError, "#{schema} is not a supported schema" unless File.file?(file)

        # rubocop:enable Style/IfUnlessModifier
        # rubocop:enable Metrics/LineLength
        Pathname.new(file)
      end
    end
  end
end
