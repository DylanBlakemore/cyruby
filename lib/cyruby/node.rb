module Cyruby
  class Node

    attr_reader :name, :label, :properties

    def initialize(name: nil, label: nil, properties: nil)
      @name = name
      @label = label
      @properties = properties
    end

    def to_cypher
      "(#{name}#{label_string})"
    end

    def -(other)
      Path.new(self, Connection.any, other)
    end

    def >(other)
      Path.new(self, Connection.right, other)
    end

    def <(other)
      Path.new(self, Connection.left, other)
    end

    private

    def label_string
      ":#{label}" if label
    end

  end
end
