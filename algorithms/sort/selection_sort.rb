module Algorithms
  module Sort

    class Selection
      def sort array
        i = 0
        while i < array.length - 1 do
          j = i
          min = j
          while j < array.length - 1 do
            j += 1
            if array[j] < array[min]
              min = j
            end
          end
          array[i], array[min] = array[min], array[i]
          i += 1
        end
        array
      end
    end

    #PSEUDOCODE
    # 1. let 'i' be 0. first index of array
    # 2. set 'j' to 'i'
    # 3. set 'min' to point to current j
    # 4. increment j
    # 5. compare element at index 'j' with min
    # 6. if element is < element at min, set min to j
    # 7. if j is not index of last element in array, go to step 4
    # 8. swap min with element at 'i'
    # 9. if i is not index of last element, increment i and go to step 2
  end
end
