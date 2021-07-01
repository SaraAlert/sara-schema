# frozen_string_literal: true

require 'test_helper'

class AssessmentTest < Minitest::Test
  def setup
    @data_structures = Dir[DATA_STRUCTURE_PATH + '/**/*'].drop(1)
  end

  def test_valid
    @data_structures.each do |data_structure|
      data = JSON.parse(File.read(data_structure))
      assert SaraSchema::Validator.validate(:assessment, data), data_structure
    end
  end

  def test_invalid
    assert !SaraSchema::Validator.validate(:assessment, {})
  end
end
