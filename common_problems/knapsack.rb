module CommonProblems
  class Knapsack

    def find(max_weight, object_array)
      n = object_array.length

      cost_matrix = Array.new(n){Array.new(max_weight+1, 0)}

      return 0 if max_weight == 0 or n == 0

      n.times do |i|
        (max_weight+1).times do |j|
          if object_array[i]['weight'] > j
            cost_matrix[i][j] = cost_matrix[i-1][j]
          else
            cost_matrix[i][j] = [cost_matrix[i-1][j], (cost_matrix[i-1][j-object_array[i]['weight']] + object_array[i]['value'])].max
          end
        end
      end

      packed_items = get_items_name(object_array, cost_matrix)

      {items: packed_items, value: cost_matrix[n-1][max_weight]}
    end

    def get_items_name(object_array, cost_matrix)
      i = cost_matrix.size - 1
      currentCost = cost_matrix[0].size - 1
      items = Array.new

      while(i >= 0 && currentCost >= 0)
        if(i == 0 && cost_matrix[i][currentCost] > 0 ) || (cost_matrix[i][currentCost] != cost_matrix[i-1][currentCost])
          items.push object_array[i]['name']
          currentCost -= object_array[i]['weight']
        end
        i -= 1
      end
      items.join(', ')

    end

    # FORMULA V[i, w]
    #
    # == 0 if i == 0 or w == 0
    # == V[i-1, w] if w[i] > W
    # == max(V[i-1, w], vi + V[i-1, w-w[i]])
    #
    # Inspiration: http://rosettacode.org/
  end
end