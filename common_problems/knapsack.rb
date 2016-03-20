module CommonProblems
  class Knapsack

    attr_reader :w, :n, :o

    def initialize(max_weight, object_array)
      w = max_weight
      o = object_array
      n = object_array.length - 1
    end

    def find(i, w, oi)

    end

    # FORMULA V[i, w]
    #
    # == 0 if i == 0 or w == 0
    # == V[i-1, w] if w[i] > W
    # == max(V[i-1, w], vi + V[i-1, w-w[i]])
  end
end