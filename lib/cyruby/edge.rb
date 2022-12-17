module Cyruby
  class Edge

    attr_reader :name, :type, :properties

    def initialize(name: nil, type: nil, properties: nil)
      @name = name
      @type = type
      @properties = properties
    end

    def to_cypher
      "[#{name}#{type_string}]"
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

    def type_string
      ":#{type}" if type
    end

  end
end
