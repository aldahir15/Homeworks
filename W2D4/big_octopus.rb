ARR =
['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  current = nil
  arr.each do |el|
    arr.each do |el2|
      current = el unless el2 > el
    end
  end
  current
end

p sluggish_octopus(ARR)

def dominant_octopus(arr)
  return arr if arr.length == 1
  mid = arr.length / 2
  left = dominant_octopus(arr.take(mid))
  right = dominant_octopus(arr.drop(mid))
  merge(left, right)
end

def merge(left, right)
  arr = []
  until left.empty? || right.empty?
    if left.first.length > right.first.length
      arr << right.shift
    else
      arr << left.shift
    end
  end
  arr + left + right
end

p dominant_octopus(ARR)[-1]

def clever_octopus(arr)
  current = ""
  arr.each{|el| current = el if el.length > current.length}
  current
end

p clever_octopus(ARR)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, dictionary)
  dictionary.each_with_index{|word, i| return i if word == direction }
  nil
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

tiles_hash =
{ "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, dictionary)
  dictionary[direction]
end

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
