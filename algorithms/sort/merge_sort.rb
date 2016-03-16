module Algorithms
  module Sort

    class Merge
      def sort array
        z = array.length
        return array if z <= 1
        mid = z / 2
        arr_1 = array[0, mid]
        arr_2 = array[mid, z-mid]

        sort_1 = sort(arr_1)
        sort_2 = sort(arr_2)

        merge( sort_1, sort_2)
      end

      def merge(arr_1, arr_2)
        i = 0
        c = Array.new
        while arr_1.length > 0 and arr_2.length > 0 do
          if arr_1[i] <= arr_2[i]
            c << arr_1[i]
            arr_1.shift
          else
            c << arr_2[i]
            arr_2.shift
          end
        end

        c << arr_1
        c << arr_2
        c.flatten!
      end
    end

    #EXPLANATION
    # 1. if array length is not more than 1, return array. It is already sorted
    # 2. divide list recursively till all elements are no longer divisible
    # 3. merge lists into new sorted lists
    #
    # PSEUDOCODE
    # 1. if array.length is <= 1, return array
    # 2. calculate mid = ( array.length / 2 ).floor
    # 3. divide array into two parts separated at mid
    # 4. for each of parts above, repeat from step 2 if part.length > 1
    # 5. for all parts, recursively merge
    #
    # MERGING:
    # 1. set i to 0
    # 2. set c as empty array
    # 3. let first array be a
    # 4. let second array be b
    # 5. if a[i] < b[i] push a[i] into c
    # 6. else push b[i] into c
    # 7. if a.length > 0 and b.length > 0, goto step 5
    # 8. if a.length > 0 push all remaining a into c
    # 9. if b.length > 0 push all remaining a into c
    # 10. return c
  end
end
