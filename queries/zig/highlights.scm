(line_comment) @comment
(doc_comment) @comment

[
  ".{"
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ":"
  ";"
  "."
  ","
] @punctuation.delimiter

(identifier) @variable

(field_identifier) @variable.member
(parameter
  (identifier) @variable.parameter)

((identifier) @type
  (#lua-match? @type "^[A-Z][a-z]*[a-zA-Z]*$"))

((identifier) @constant
  (#lua-match? @constant "^[A-Z%d_]+$"))

(function_signature
  name: (identifier) @function)

(function_declaration
  name: (identifier) @function)

(call_expression
  function: (identifier) @function.call)

(build_in_call_expr
  function: (identifier) @function.builtin)

; other identifiers
[
  (type_identifier)
  (enum_identifier)
] @type

(primitive_type) @type.builtin

[
  (integer_literal)
  (float_literal)
] @number

[
  (boolean_literal)
  (undefined_literal)
  (null_literal)
] @constant.builtin

(char_literal) @character

(string_literal) @string
(multiline_string_literal
  "\\\\" @string.special)

(escape_sequence) @string.escape

(label_identifier) @attribute

(call_modifier) @keyword.modifier ; async

(binary_operator) @operator

[
  "align"
  "allowzero"
  ; "and"
  ; "anyframe"
  ; "anytype"
  ; "asm"
  "await"
  "break"
  ; "callconv"
  ; "catch"
  "comptime"
  "const"
  "continue"
  "defer"
  "else"
  "enum"
  "errdefer"
  "error"
  "export"
  "extern"
  "false"
  "for"
  "if"
  "inline"
  ; "noalias"
  ; "nosuspend"
  ; "noinline"
  "null"
  ; "opaque"
  ; "or"
  ; "orelse"
  ; "packed"
  "pub"
  "resume"
  "return"
  ; "linksection"
  "struct"
  "suspend"
  "switch"
  "test"
  ; "threadlocal"
  "true"
  "try"
  ; "undefined"
  "union"
  ;"unreachable"
  "usingnamespace"
  "var"
  "volatile"
  "while"
] @keyword

"fn" @keyword.function

[
  "continue"
  "else"
  "if"
  "switch"
] @keyword.conditional

[
  "for"
  "while"
] @keyword.repeat

(assignment_modifier) @attribute

[
  "&"
  "&="
  "*"
  "*="
  ;"*%"
  "*%="
  ;"^"
  "^="
  ; ":"
  ; ","
  ; "."
  ".."
  "..."
  ".*"
  ".?"
  "="
  ;"=="
  "=>"
  "!"
  ;"!="
  ;"<"
  ;"<<"
  "<<="
  ; "<="
  "-"
  "-="
  "-%"
  "-%="
  ;"->"
  ;"%"
  "%="
  "|"
  ;"||"
  "|="
  ;"+"
  ;"++"
  "+="
  ;"+%"
  "+%="
  "?"
  ;">"
  ;">>"
  ">>="
  ;">="
  ;"/"
  "/="
  "~"
] @operator
