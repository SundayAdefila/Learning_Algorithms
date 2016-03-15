module Algorithms
  module Sort

    class Insertion
      def sort array
        i = 0
        while i < array.length - 1 do
          if array[i] > array[i.next]
            array[i], array[i.next] = array[i.next], array[i]
            j = i
            while j > 0 do
              if array[j] < array[j-1]
                array[j], array[j-1] = array[j-1], array[j]
                j -= 1
              else
                break
              end
            end
          end
          i += 1
        end
        array
      end
    end

    #PSEUDOCODE
    # 1. let 'i' be 0. first index of array
    # 2. compare element at index 'i' with the next element
    # 3. swap if not in wanted order else go to step 8
    # 4. let 'j' be 'i' present index
    # 5. if 'j' is not zero, compare element at index 'j' with previous element
    # 6. swap if not in wanted order else go to step 8
    # 7. decrement 'j' and go to step 5
    # 8. if 'i' is not index of second to last element, increment i and go to step 2
    # 9. return sorted array
  end
end
