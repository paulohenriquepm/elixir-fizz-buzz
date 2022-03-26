defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, then should return a converted list" do
      expected_result = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz, 23, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected_result
    end

    test "when an invalid is provided, then should return an error" do
      expected_result = {:error, "Error reading the file: enoent"}

      assert FizzBuzz.build("invalid_file.txt") == expected_result
    end
  end
end
