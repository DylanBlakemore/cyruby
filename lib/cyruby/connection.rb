module Cyruby
  class Connection

    def self.left
      self.new(:left)
    end

    def self.right
      self.new(:right)
    end

    def self.any
      self.new(:any)
    end

    attr_reader :direction

    def initialize(direction)
      @direction = direction
    end

    def to_cypher
      case direction
      when :left
        "<-"
      when :right
        "->"
      when :any
        "-"
      else
        raise ArgumentError, "Unsupported connection direction '#{direction}'"
      end
    end

  end
end
