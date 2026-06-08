# Comparison Table: [ ] vs [[ ]]
| Aspect | POSIX [ ] | Bash [[ ]] |
|--------|-----------|-------------|
| Type | External command (`test`) | Bash keyword (built‑in) |
| String Comparison | < and > must be escaped (\<, \>) | < and > work normally |
| Regex Support | Not supported | Supports =~ |
| Logical Operators | Uses -a and -o | Uses && and || |
| Variable Safety | Unquoted empty vars can break tests | Safe even without quotes |
| Word Splitting | Performs word splitting | No word splitting |
| Globbing | Globs may expand | Globs do NOT expand |
| Use Case | Portable scripts | Bash scripts (recommended) |