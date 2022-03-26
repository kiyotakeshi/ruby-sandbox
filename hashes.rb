# also known as dictionary
sample_hash = {
  # key is String
  'a' => 1, 'b' => 2, 'c' => 3
}
p sample_hash['a']
p sample_hash.keys
p sample_hash.values

another_hash = {
  # key is Symbol
  a: 1, b: 2, c: 3, d: "ruby"
}
p another_hash[:b]
another_hash[:c] = 5

p another_hash.keys # [:a, :b, :c]

another_hash.each { |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
  # puts "The class for key is #{key} and the value is #{value}"
}

another_hash.select {
  |k, v|
  # if v.is_a?(String)
  #   p v
  # end
  p v if v.is_a?(String)
}

string_deleted_another_hash = another_hash.each { |k, v|
  # if v.is_a?(String)
  #   another_hash.delete(k)
  # end
  another_hash.delete(k) if v.is_a?(String)
}

p string_deleted_another_hash
