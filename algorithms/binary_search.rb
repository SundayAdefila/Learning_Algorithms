module Algorithms
  module Search

    class Binary

      def search e, array
        array = array.sort
        low = 0
        high = array.length - 1
        while low <= high do
          mid = ((low + high) / 2).floor
          return mid if array[mid] == e
          if array[mid] > e
            high = mid - 1
          else
            low = mid + 1
          end
        end

        "not found"
      end

      #PSEUDOCODE ( assume array is sorted )
      # 1. get higher and lower boundaries of array
      # 2. get middle of array (formula: )
      # 3. if element at middle of array is equal to element to find, return element and mid
      # 4. if element at middle of array is greater than element to find, new higher boundary is middle - 1 and go back to step 2
      # 5. new lower boundary is middle + 1, go back to step 2
    end
  end
end