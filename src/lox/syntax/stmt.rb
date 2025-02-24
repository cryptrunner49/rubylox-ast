# frozen_string_literal: true

require_relative '../lexical/token'

# stmt.rb - generated by GenerateAst

module Lox
  module Syntax
    class Stmt
      module Visitor
        def visit_block_stmt(expr)
          raise NotImplementedError, 'Must implement visit_block_stmt'
        end

        def visit_expression_stmt(expr)
          raise NotImplementedError, 'Must implement visit_expression_stmt'
        end

        def visit_print_stmt(expr)
          raise NotImplementedError, 'Must implement visit_print_stmt'
        end

        def visit_var_stmt(expr)
          raise NotImplementedError, 'Must implement visit_var_stmt'
        end

        def visit_while_stmt(expr)
          raise NotImplementedError, 'Must implement visit_while_stmt'
        end
      end

      def accept(visitor)
        raise NotImplementedError, 'Subclasses must implement accept'
      end

      class Block < Stmt
        # @statements : List<Stmt>
        attr_reader :statements

        def initialize(statements)
          @statements = statements
        end

        def accept(visitor)
          visitor.visit_block_stmt(self)
        end
      end

      class Expression < Stmt
        # @expression : Expr
        attr_reader :expression

        def initialize(expression)
          @expression = expression
        end

        def accept(visitor)
          visitor.visit_expression_stmt(self)
        end
      end

      class Print < Stmt
        # @expression : Expr
        attr_reader :expression

        def initialize(expression)
          @expression = expression
        end

        def accept(visitor)
          visitor.visit_print_stmt(self)
        end
      end

      class Var < Stmt
        # @name : Token
        # @initializer : Expr
        attr_reader :name, :initializer

        def initialize(name, initializer)
          @name = name
          @initializer = initializer
        end

        def accept(visitor)
          visitor.visit_var_stmt(self)
        end
      end

      class While < Stmt
        # @condition : Expr
        # @body : Stmt
        attr_reader :condition, :body

        def initialize(condition, body)
          @condition = condition
          @body = body
        end

        def accept(visitor)
          visitor.visit_while_stmt(self)
        end
      end
    end
  end
end
