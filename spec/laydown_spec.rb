require 'polyglot'
require 'treetop'

Treetop.load "laydown"

describe LayDownParser do
	it "parses an empty document" do
		parser = LayDownParser.new

		text = ''

		expect(parser.parse(text)).to_not eq(nil)
	end
end
