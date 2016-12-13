require "sortplus/version"

require 'pp'

module SortPlus

  def self.array_of_arrays(arry,ind,asc)
  	my_h = arry.each_with_object({}) { |a,h| h.has_key?(a[ind]) ? h[a[ind]] << a : h[a[ind]] = [a] }
  	keys = asc ? my_h.keys.sort : my_h.keys.sort.reverse
  	keys.each_with_object([]) do |a,l|
  	  mat = asc ? my_h[a] : my_h[a].reverse
  	  mat.each { |m| l << m }
  	end
  end

  def self.array_of_hashes(arry,key,asc)
  end

  def self.hash_of_arrays(hash,ind,asc)
  end

  def self.hash_of_hashes(hash,key,asc)
  end

  def self.hash_by_keys(hash,asc)
  end

end
