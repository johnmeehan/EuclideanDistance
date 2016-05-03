#!/usr/bin/env ruby
class EuclideanDistance
  def initialize(vector1, vector2)
    @v1 = vector1
    @v2 = vector2
  end

  def calculate
    sum = 0
    @v1.zip(@v2).each do |v1, v2|
      component = (v1 - v2)**2
      sum += component
    end
    Math.sqrt(sum)
  end
end

# limerick  = [52.661418, -8.550537]
# dublin    = [53.318387, -6.368181]
# cork      = [51.901063, -8.472533]
# galway    = [53.275008, -9.049125]
# puts EuclideanDistance.new(limerick, dublin).calculate # 2.279097623555649
# puts EuclideanDistance.new(limerick, cork).calculate # 0.7643457006100024
# puts EuclideanDistance.new(limerick, galway).calculate # 0.7906217059023881
