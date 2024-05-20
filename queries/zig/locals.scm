(identifier) @local.reference
(type_identifier) @local.reference

[
  (block)
  (comptime_block)
  (defer_block)
  (suspend_block)
  (resume_block)
  (if_expression)
  (while_expression)
  (for_expression)
  (test_expression)
  (anonymous_array_expr)
] @local.scope

(function_declaration
  name: (identifier) @local.definition.function)
