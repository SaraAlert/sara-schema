# frozen_string_literal: true

require 'minitest/autorun'
lib = File.expand_path('../lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sara-schema'
require 'active_support/core_ext/string'

DATA_STRUCTURE_PATH = File.join(Dir.pwd, 'test', 'data_structures')
