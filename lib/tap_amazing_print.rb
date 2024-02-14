# frozen_string_literal: true

require_relative "tap_amazing_print/version"
require 'amazing_print'

module TapAmazingPrint
  class Error < StandardError; end

  module ObjectExtension
    def tapp
      self.tap{ |object| ap(object) }
    end

    def tapap
      self.tap{ |object| ap(object) }
    end
  end
end

class Object
  include TapAmazingPrint::ObjectExtension
end
