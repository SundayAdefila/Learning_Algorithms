module Algorithms
  module Sort

    class Quick
      def sort(array, left_point=nil, right_point=nil)
        left_point ||= 0
        right_point ||= array.length - 1

        new_sort = sort_about_pivot(array, left_point, right_point)
        array = new_sort[0]
        pivot_point = new_sort[3]

        new_right_point = new_sort[2]
        new_left_point = new_sort[1]

        # recursively quick sort the two parts
        unless right_point - left_point <= 1
          sort(array, new_left_point, pivot_point-1)
          if new_right_point - pivot_point > 1
            sort(array, pivot_point, new_right_point)
          end
        end

        array

      end

      def sort_about_pivot(array, left_point, right_point)

        if right_point - left_point <= 1
          if array[right_point] < array[left_point]
            array[left_point], array[right_point] = array[right_point], array[left_point]
          end
          return [array, left_point, right_point]
        end

        init_right_point, init_left_point = right_point, left_point
        pivot = array[right_point]
        right_point -= 1

        loop do
          while right_point > left_point and array[right_point] >= pivot do
            right_point -= 1
          end

          while left_point < right_point and array[left_point] < pivot do
            left_point += 1
          end

          if left_point >= right_point
            break
          else
            array[left_point], array[right_point] = array[right_point], array[left_point]
          end
        end

        # calculate index to insert pivot into
        if pivot > array[left_point]
          index_to_insert = left_point+1
        else
          index_to_insert = left_point
        end

        # insert pivot into index where 'i' and 'j' meets
        array.insert(index_to_insert, pivot) #todo :)

        # remove pivot from end of array
        array.delete_at init_right_point+1

        [array, init_left_point, init_right_point, index_to_insert]
      end
    end

    # PSEUDO CODE EXPLANATION
    # 1. make rightmost element the pivot
    # 2. divide array into two parts with pivot as middle
    # 3. repeat steps for two parts till array is no longer divisible

  end
end
