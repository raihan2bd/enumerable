require_relative 'my_enum'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |item| item < 5 })
puts(list.all? { |item| item > 5 })
puts(list.any? { |item| item == 2 })
puts(list.any? { |item| item == 5 })

p list.filter(&:even?)
