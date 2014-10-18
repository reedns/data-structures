class RadixSort
  def sort(arr)
    zero = []; one = []; two = []; three = []; four = []; five = []; six = []; seven = []; eight = []; nine = []
    max = arr.max
    passes = max.to_s.length
    bucket = 0
    n = 1

    passes.times do
      arr.each do |ele|
        case
        when ele == bucket
          zero << ele
        when ele == bucket + 1 * n
          one.push(ele)
        when ele == bucket + 2 * n
          two << ele
        when ele == bucket + 3 * n
          three << ele
        when ele == bucket + 4 * n
          four << ele
        when ele == bucket + 5 * n
          five << ele
        when ele == bucket + 6 * n
          six << ele
        when ele == bucket + 7 * n
          seven << ele
        when ele == bucket + 8 * n
          eight << ele
        else
          nine << ele
        end
      end
      n *= 10
    end
    arr = zero + one + two + three + four + five + six + seven + eight + nine
  end
end

# it evaluates the ones place of each number in the array
#   then it puts each number in a corresponding 0-9 bucket
#     then it puts the numbers back in the array 0s first 9s last
#       if at least one number has a 10s place it puts the corresponding the numbers
#       in the corresponding 0-9 bucket; any number that is less than 10 goes in the zero bucket in order
#         it repeats until the number with the highest number place is sorted
