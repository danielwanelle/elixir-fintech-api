defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there's a csv file with the given name, returns the sum of all the elements" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert response == expected_response
    end

    test "when there's no a csv file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
