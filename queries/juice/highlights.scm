(ERROR) @error
(string) @string
(string_content (escape_sequence) @string.escape)
(string_content) @spell
(bool_literal) @boolean
(string_literal) @string
(int_literal) @number
(float_literal) @number
(binary_literal) @number
(octal_literal) @number
(hex_literal) @number
(string_content (string_escape_sequence) @string.escape)
(comment) @comment
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket

(identifier) @label

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
"type" @keyword
"import" @keyword

(type_identifier) @type
(macro_identifier) @macro

(import_path) @label

(function_declaration name: (identifier) @function)

(("\"" @conceal) (#set! conceal ""))
