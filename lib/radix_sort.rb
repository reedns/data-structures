class RadixSort
  def sort(arr)
    rounds = arr.max.to_s.length

    rounds.times do |round|
      buckets = []
      10.times { buckets << [] }
      arr.each do |ele|
        bucket_number = (ele / 10**round) % 10
        buckets[bucket_number] << ele
        arr = buckets.flatten
      end
    end
    arr.flatten
  end
end
