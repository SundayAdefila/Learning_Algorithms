module CommonProblems
  class Knapsack

    def find(max_weight, object_array)
      n = object_array.length

      cost_matrix = Array.new(n){Array.new(max_weight, 0)}

      return 0 if max_weight == 0 or n == 0

      n.times.each do |i|
        max_weight.times.each do |j|
          if object_array[i]['weight'] > j
            cost_matrix[i][j] = cost_matrix[i-1][j]
          else
            cost_matrix[i][j] = [cost_matrix[i-1][j], (cost_matrix[i-1][j-object_array[i]['weight']] + object_array[i]['value'])].max
          end
        end
      end

      cost_matrix[n][max_weight]
    end

    # FORMULA V[i, w]
    #
    # == 0 if i == 0 or w == 0
    # == V[i-1, w] if w[i] > W
    # == max(V[i-1, w], vi + V[i-1, w-w[i]])
  end
end