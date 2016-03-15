module Algorithms
  module Search

    class Interpolation

      def search e, array
        array = array.sort
        low = 0
        high = array.length - 1
        while low <= high do
          mid =  low + (((high - low) / (array[high] - array[low])) * (e - array[low]))
          return 'not found' if mid > high or mid < low
          return mid if array[mid] == e
          if array[mid] > e
            high = mid - 1
          else
            low = mid + 1
          end
        end

        "not found"
      end

      #PSEUDOCODE ( assume array is sorted and equally distributed)
      # 1. get higher and lower boundaries of array
      # 2. get middle of array (formula: mid = Lo + ((Hi - Lo) / (A[Hi] - A[Lo])) * (X - A[Lo]).   X is element to find)
      # 3. if element at middle of array is equal to element to find, return element and mid
      # 4. if element at middle of array is greater than element to find, new higher boundary is middle - 1 and go back to step 2
      # 5. new lower boundary is middle + 1, go back to step 2
    end
  end
end