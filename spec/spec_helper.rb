# frozen_string_literal: true

require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir(__dir__ + '/../lib/')
loader.push_dir(__dir__ + '/test_doubles/')
loader.setup
