# TODO: Write documentation for `CRanial::Intercourse`
require "./parser.cr"
module CRanial::Intercourse
  VERSION = "0.1.0"
  # TODO: Put your code here
end
module CRanial::Tokens
  INTEGER = "INTEGER" 
  class Token
    def self.call(type : Symbol, value : Int8|String)
      self.new(type, value)
    end

    def initialize(@type : Symbol, @value : Int8|String); end
    
    def to_s
      print "Token #{@type.to_s} : #{@value.to_s}"
    end
  end
end

CRanial::Tokens::Token.call(:hello, 8).to_s
