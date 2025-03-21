# frozen_string_literal: true

module Lox
  module Lexical
    module TokenType
      # ======================================================================
      # Section: Token Types
      # Purpose: Contains constants representing different types of tokens.
      # ======================================================================

      # Single-character tokens
      LEFT_PAREN = :LEFT_PAREN
      RIGHT_PAREN = :RIGHT_PAREN
      LEFT_BRACE = :LEFT_BRACE
      RIGHT_BRACE = :RIGHT_BRACE
      COMMA = :COMMA
      DOT = :DOT
      MINUS = :MINUS
      PLUS = :PLUS
      SEMICOLON = :SEMICOLON
      SLASH = :SLASH
      STAR = :STAR

      # One or two character tokens
      BANG = :BANG
      BANG_EQUAL = :BANG_EQUAL
      EQUAL = :EQUAL
      EQUAL_EQUAL = :EQUAL_EQUAL
      GREATER = :GREATER
      GREATER_EQUAL = :GREATER_EQUAL
      LESS = :LESS
      LESS_EQUAL = :LESS_EQUAL

      # Literals
      IDENTIFIER = :IDENTIFIER
      STRING = :STRING
      NUMBER = :NUMBER

      # Keywords
      AND = :AND
      CLASS = :CLASS
      ELSE = :ELSE
      FALSE = :FALSE
      FUN = :FUN
      FOR = :FOR
      IF = :IF
      NIL = :NIL
      OR = :OR
      PRINT = :PRINT
      RETURN = :RETURN
      SUPER = :SUPER
      THIS = :THIS
      TRUE = :TRUE
      VAR = :VAR
      WHILE = :WHILE

      # End of file
      EOF = :EOF

      ERROR = :ERROR

      # Get all token types as an array
      def self.all_types
        constants.map { |c| const_get(c) }
      end
    end
  end
end
