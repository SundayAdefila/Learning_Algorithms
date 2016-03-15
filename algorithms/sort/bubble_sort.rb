module Algorithms
  module Sort

    class Bubble
      def sort array
        old = array.clone
        loop do
          i = 0
          while i < array.length - 1 do
            if array[i] > array[i.next]
              array[i], array[i.next] = array[i.next], array[i]
            end
            i += 1
          end
          return array if array == old
          old = array.clone
        end
      end
    end

    #PSEUDOCODE
    # 1. check state of array
    # 2. let 'i' be 0. first index of array
    # 3. compare element at index 'i' with the next element
    # 4. swap if not in wanted order
    # 5. if 'i' is not index of second to last element, increment i and go to step 3
    # 6. check state of array... if it has changed from last check, go to step 2
    # 7. if state has not change, array is sorted, return array.
  end
end
