The solution involves using pattern matching within the `Enum.reduce` function to handle non-numeric values.  If a non-number is encountered, it is ignored.  This results in a more robust solution.

```elixir
list = [1, 2, 3, "a", 4, 5]

sum = Enum.reduce(list, 0, fn
  x, acc when is_number(x) -> x + acc
  _, acc -> acc
end)

IO.puts(sum)  # Output: 15
```

The `when is_number(x)` clause ensures that only numeric values are processed. Non-numeric values are ignored (handled by the second clause), preventing the runtime error.