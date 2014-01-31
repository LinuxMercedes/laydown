require 'treetop'
require_relative 'nodes.rb'

class Parser
	Treetop.load "laydown.treetop"
	@@parser = LayDownParser.new

	def self.parse(data)
		result = @@parser.parse(data)

		if result.nil?
			raise Exception, "Parse error at #{@@parser.failure_line}, column #{@@parser.failure_column}, because of #{@@parser.failure_reason}"
		end

		p result

		return result
	end

end

