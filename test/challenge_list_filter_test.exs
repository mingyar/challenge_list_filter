defmodule ChallengeListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "How many odds are in the list" do
      list1  = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2  = ["banana", "abc"]
      list3  = ["2", "4", "6", "44"]

      assert ChallengeListFilter.call(list1) == 3
      assert ChallengeListFilter.call(list2) == 0
      assert ChallengeListFilter.call(list3) == 0
    end
  end
end
