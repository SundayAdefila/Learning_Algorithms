module Algorithms
  module Sort

    class Shell
      def sort array
        k = 1 #initial value of interval
        h = 1

        # get highest possible interval with knuth's increment
        while h < array.length.to_f do
          h = (3**k - 1) / 2
          k += 1
        end

        while h > 0
          array = create_and_sort_with_interval(array, h)
          k -= 1
          h = (3**k - 1) / 2
        end
        array
      end

      def create_and_sort_with_interval(array, interval)
        i=0
        while i < interval
          # get sub array with interval
          sub_arr = (i..array.length).step(interval).map{ |d| array[d] }.compact

          # sort sub array with insertion sort
          sorted_sub_arr = Algorithms::Sort::Insertion.new.sort(sub_arr)

          # return sorted_sub_arr back into parent array
          (i..array.length).step(interval).map{ |d| array[d] = sorted_sub_arr.shift }

          i += 1
        end

        array.compact
      end


    end

    #EXPLANATION OF ALGORITHM (from: http://www.tutorialspoint.com/data_structures_algorithms/shell_sort_algorithm.htm)
    # Step 1 − Initialize the value of h
    # Step 2 − Divide the list into smaller sub-list of equal interval h
    # Step 3 − Sort these sub-lists using insertion sort
    # Step 3 − Repeat until complete list is sorted
    #
    #PSEUDOCODE
    # 1. recursively calculate highest possible interval(formula: knuth's interval, shell sequence, Hibbard's increments, etc...)
    # 2. if interval is greater than zero: compare values at all intervals and swap to wanted order else go to step 4
    # 3. recalculate interval to next lower value and repeat from step 2
    # 4. return array

  end
end
