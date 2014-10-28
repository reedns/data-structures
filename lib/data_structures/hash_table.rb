class HashTable
  attr_accessor :table, :size

  def initialize(size)
    @table = Array.new(size)
    @size = size
  end

  def hash(key)
    fail 'Key must be a string' if key.class != String
    key_split = key.split(//)
    key_to_nums = key_split.map(&:ord)
    key_to_nums.reduce { |a, e| a + e }
  end

  def set(key, val)
    index = hash(key)
    @table.insert(index, [key, val])
  end

  def get(key)
    index = hash(key)
    @table[index][1]
  end
end
