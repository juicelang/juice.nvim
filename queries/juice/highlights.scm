(ERROR) @error

(hash_bang_line) @keyword.directive

(bool_literal) @boolean
(string_interpolation ["${" "}"] @punctuation.special) @none
(string_literal [ "\"" ] @string) @none
(string_text) @string @spell
(string_content (string_escape_sequence) @string.escape)
(int_literal) @number.int
(float_literal) @number.float
(binary_literal) @number.binary
(octal_literal) @number.octal
(hex_literal) @number.hex

(comment) @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^///.*$"))

(type_declaration name: (type_identifier) @type (type_constructors (type_constructor_shorthand)))
; (type_declaration name: (type_identifier) @local.definition.namespace (type_constructors (type_constructor)))

(variable_declaration name: (identifier) @variable @local.definition.var)
(type_declaration name: (type_identifier) @type @local.definition.type)

((identifier) @constructor
  (#eq? @constructor "new"))

((identifier) @variable.builtin
  (#eq? @variable.builtin "self"))

(type_constructor constructor_name: (identifier) @constructor)
(type_constructor (type_parameters (type_parameter name: (identifier)))) @variable.parameter

(type_expression) @type
(type_binary_expression operator: [ "&" "|" ] @operator) @operator

(function_declaration) @local.scope
(block) @local.scope

(function_declaration name: (identifier) @function)
(function_declaration name: (macro_identifier) @macro)

(function_declaration params: (function_parameters (function_parameter param_name: (identifier)) ) @local.definition.parameter)
(function_declaration params: (function_parameters (function_parameter param_name: (identifier)) ) @variable.parameter)

(function_declaration params: (function_parameters (function_parameter param_type: (type_expression)) ) @type)

(function_call name: (identifier) @function)
(function_call name: (macro_identifier) @macro)

[
"{" 
"}" 
"[" 
"]" 
"(" 
")" 
] @punctuation.bracket

[
	"="
	":="
	"->"
	"+"
	"-"
	"*"
	"/"
	">"
	"<"
	"=="
	">="
	"<="
	"!="
	"&&"
	"||"
	"**"
	"&"
	"|"
	"^"
	"%"
	"!"
	"?"
] @operator

[
 ":"
 ","
 "."
] @punctuation.delimiter

[
	"fn"
	"match"
	"impl"
	"static"
	"foreign"
	"break"
] @keyword

[
	"import"
] @keyword.import

[
	"export"
] @keyword.export

[
	"loop"
	"for"
	"continue"
] @keyword.repeat

[
	"return"
] @keyword.return

[
	"if"
	"else"
] @keyword.conditional

(import_as [ "as" ] @keyword.import)
(import_as (identifier) @module)

; (identifier) @variable

(builtin_type) @type.builtin
(type_identifier) @type

(macro_identifier) @macro

(("\"" @conceal) (#set! conceal ""))
