# frozen_string_literal: true

require 'test_helper'

class SaraSchemaTest < Minitest::Test
  def test_bad_filename
    assert_raises SaraSchema::Validator::SchemaNotFoundError do
      SaraSchema::Validator.validate(:not_found, {})
    end
  end
end
