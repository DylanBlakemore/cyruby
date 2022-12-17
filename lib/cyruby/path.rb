module Cyruby
  class Path

    attr_reader :left, :connection, :right

    def initialize(left, connection, right)
      @left = left
      @connection = connection
      @right = right
    end

    def to_cypher
      "#{left.to_cypher}#{connection.to_cypher}#{right.to_cypher}"
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

  end
end
