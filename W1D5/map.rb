class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def lookup(key)
    @map.select{|el| return el[1] if el[0] == key}
    nil
  end

  def remove(key)
    indx = nil
    @map.each_with_index{|el,i| indx = i if el[0] == key}
    @map.delete_at(indx)
  end

  def show
    p @map
  end
end


new_map = Map.new
alphabet = ("a".."z").to_a
(0..5).each do |num|
  new_map.assign(num,alphabet[num])
end
new_map.show
# p new_map.lookup(5)
# new_map.remove(4)
# new_map.show
