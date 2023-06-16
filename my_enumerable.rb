module MyEnumerable
  def all?(&block)
    each { |item| return false unless block.call(item) }
    true
  end

  def filter(&block)
    arr = []
    each { |item| arr << item if block.call(item) }
    arr
  end
end