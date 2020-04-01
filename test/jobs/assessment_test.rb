# frozen_string_literal: true

require 'test_helper'

class AssessmentTest < Minitest::Test
  def setup
    @data_structures = Dir[DATA_STRUCTURE_PATH + '/**/*'].drop(1)
  end

  def test_valid
    require 'pry'; binding.pry
    @data_structures.each do |data_structure|
      data = JSON.parse(File.read(data_structure))
      if data_structure.include?('invalid')
        assert !SaraSchema::Validator.validate(:assessment, data)
      else
        assert SaraSchema::Validator.validate(:assessment, data)
      end
    end
  end

  def test_invalid
    assert !SaraSchema::Validator.validate(:assessment, {})
  end
end
