# Elixir Enum.reduce Error Handling

This example demonstrates a common error when using `Enum.reduce` in Elixir: attempting to perform an operation on a list containing mixed data types.  The `+` operator is not defined for strings and numbers, leading to a runtime error if a string is encountered.

The solution showcases robust error handling using pattern matching to ensure that only numbers are added during the reduction.