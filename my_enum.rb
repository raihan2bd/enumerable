module MyEnumerable
  def all?
    output = true
    each { |item| output = false unless yield item }
    output
  end

  def any?
    output = false
    each { |item| output = true if yield item }
    output
  end

  def filter
    result = []
    each { |item| result << item if yield item }
    result
  end
end