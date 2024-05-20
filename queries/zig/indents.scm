[
  ")"
  "]"
  "}"
] @indent.branch

(block
  "{") @indent.begin

[
  (line_comment)
  (multiline_string_literal)
] @indent.ignore
