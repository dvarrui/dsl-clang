# frozen_string_literal: true

require_relative "clang/version"
require_relative "clang/clang"

# module Dsl
#   module Clang
#     class Error < StandardError; end
#     # Your code goes here...
#   end
# end

def main(&block)
  modern_c = CLang.new
  modern_c.run(block)
end
