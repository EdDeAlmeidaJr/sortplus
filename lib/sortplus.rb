require "sortplus/version"

module SortPlus

  def self.array_sort(arry,ind,asc)
  	my_h = arry.each_with_object({}) { |a,h| h.has_key?(a[ind]) ? h[a[ind]] << a : h[a[ind]] = [a] }
  	keys = asc ? my_h.keys.sort : my_h.keys.sort.reverse
  	keys.each_with_object([]) do |a,l|
  	  mat = asc ? my_h[a] : my_h[a].reverse
  	  mat.each { |m| l << m }
  	end
  end

end
