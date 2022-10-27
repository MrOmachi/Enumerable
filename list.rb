require_relative './enumerable'

class MyList
include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

numbers = MyList.new(1, 2, 3, 4)

p numbers.list

numbers.all? { |number| number < 5}
numbers.all? { |number| number > 5}



