module Algorithms

	class Search

		def linear_search e, array
			result = nil
			start = Time.now
			array.each_with_index do |a, i|
				if a == e
					result = i
				end
			end
			stop = Time.now
			p start - stop
			start = Time.now
			array.index e #which algorithm is used for this?
			stop = Time.now
			p start - stop
			result
		end
	end
end