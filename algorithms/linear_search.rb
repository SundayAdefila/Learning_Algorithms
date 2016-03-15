module Algorithms
  module Search
    class Linear

      def search e, array
        result = nil
        array.each_with_index do |a, i|
          if a == e
            result = i
          end
        end
        # array.index e #which algorithm is used for this?
        result
      end
    end
  end
end