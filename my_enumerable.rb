module MyEnumerable
  def all?(&block)
    each { |item| return false unless block.call(item) }
    true
  end
end