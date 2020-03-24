# frozen_string_literal: true

require 'test_helper'

class AssessmentTest < Minitest::Test
  def setup
    data_structure_name = class_name.to_s.gsub('Test', '').underscore
    data_structure_path = File.join(DATA_STRUCTURE_PATH, 'schema', data_structure_name) << '.json'
    @data_structure = JSON.parse(File.read(data_structure_path))
  end

  def test_valid
    assert SaraSchema::Validator.validate(:assessment, @data_structure)
  end

  def test_invalid
    assert !SaraSchema::Validator.validate(:assessment, {})
  end
end
