# Load test coverage tool (must be loaded before any code)
#require 'simplecov'
#SimpleCov.start do
#  add_filter '/test/'
#  add_filter '/config/'
#end

# XXX: fix for ruby 1.8.7
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end

# Load and initialize the application to be tested
require 'library_setup'

# Load test frameworks
require 'minitest/autorun'
