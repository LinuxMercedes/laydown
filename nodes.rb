require 'treetop'

module LayDown
	class Laydown < Treetop::Runtime::SyntaxNode
	end

	class Paragraph < Treetop::Runtime::SyntaxNode
	end

	class Line < Treetop::Runtime::SyntaxNode
	end

	class Text < Treetop::Runtime::SyntaxNode
	end

	class InlineBlock < Treetop::Runtime::SyntaxNode
	end

	class InlineMath < Treetop::Runtime::SyntaxNode
	end

	class Header < Treetop::Runtime::SyntaxNode
	end

	class H1 < Treetop::Runtime::SyntaxNode
	end

	class H2 < Treetop::Runtime::SyntaxNode
	end

	class H3 < Treetop::Runtime::SyntaxNode
	end

	class H4 < Treetop::Runtime::SyntaxNode
	end

	class H5 < Treetop::Runtime::SyntaxNode
	end

	class H6 < Treetop::Runtime::SyntaxNode
	end

	class CodeBlock < Treetop::Runtime::SyntaxNode
	end

end
