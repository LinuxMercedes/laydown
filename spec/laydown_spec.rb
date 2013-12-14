require 'polyglot'
require 'treetop'

Treetop.load "laydown"

describe LayDownParser do
	it "parses an empty document" do
		parser = LayDownParser.new

		text = ''

		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses a paragraph" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.
This is another line in that paragraph.
Moooooore text.
END

		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses inline blocks" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.
This is a line `` with an empty inline block.
This is another line in that paragraph.
This is a line with a `filled inline block`.
This line has an escaped \` that should parse fine.
This line has an `escaped \` inside a ` block.
Moooooore text.
This line has a `tagged, inline` block.
END

		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses inline math" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph with some $inline math code$.
It also has lines with \$ escapes.
Annnnd, surprise surprise, it has $math \$ equations$ with escapes too!
END
	
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h1 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

This is an underlined header
============================

# This is a tagged header

# This is a header with a closing tag #

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h2 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

This is an underlined header
----------------------------

## This is a tagged header

## This is a header with a closing tag #

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h3 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

### This is a tagged header

### This is a header with a closing tag ###

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h4 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

#### This is a tagged header

#### This is a header with a closing tag ###

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h5 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

##### This is a tagged header

##### This is a header with a closing tag ###

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses h6 headers" do
		parser = LayDownParser.new

		text =<<'END'
This is a paragraph.

###### This is a tagged header

###### This is a header with a closing tag ###

That's it.
END
		
		expect(parser.parse(text)).to_not eq(nil)
	end

	it "parses code blocks" do
		parser = LayDownParser.new

		text = <<'END'
this text is in a beautiful paragraph and there's nothing you can do about it.

And this is another `inline, inlined code` paragraph.

```CODE
BUT THIS IS A CODE BLOCK
```

INTERVENING PARAGRAPH

    And here is another
	and it might have a couple
	different ways of handling identation
    which vim makes kind of confusing

and this is a closing paragraph.

END

		expect(parser.parse(text)).to_not eq(nil)
	end

end
