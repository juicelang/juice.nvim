(hash_bang_line) @comment
(ERROR) @error
(bool_literal) @boolean
(string_literal) @string
(string_content) @spell
(string_content (string_escape_sequence) @string.escape)
(int_literal) @number
(float_literal) @number
(binary_literal) @number
(octal_literal) @number
(hex_literal) @number
(comment) @comment
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"(" @punctuation.paren
")" @punctuation.paren

"=" @operator
":=" @operator
"->" @operator
"+" @operator
"-" @operator
"*" @operator
"/" @operator
">" @operator
"<" @operator
"==" @operator
">=" @operator
"<=" @operator
"!=" @operator
"&&" @operator
"||" @operator
"**" @operator
"&" @operator
"|" @operator
"^" @operator
"%" @operator

"fn" @keyword
"import" @keyword
"export" @keyword
"loop" @keyword
"for" @keyword
"match" @keyword
"impl" @keyword
"static" @keyword
"foreign" @keyword
"return" @keyword
"break" @keyword
"continue" @keyword
"if" @keyword
"else" @keyword

(type_identifier) @type
(macro_identifier) @macro

(function_declaration name: (identifier) @function)
(("\"" @conceal) (#set! conceal ""))
