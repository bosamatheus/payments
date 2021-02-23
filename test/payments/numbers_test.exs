defmodule Payments.NumbersTest do
  use ExUnit.Case

  alias Payments.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected = {:ok, %{result: 37}}

      assert response == expected
    end

    test "when there is not file with the given name, return an error" do
      response = Numbers.sum_from_file("foo")

      expected = {:error, %{message: "Invalid file"}}

      assert response == expected
    end
  end
end
