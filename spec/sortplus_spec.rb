require "spec_helper"

describe SortPlus do

  context "Configuration" do

  	context "Version" do
  
      it "has a version number" do
        expect(SortPlus::VERSION).not_to be nil
      end

    end

    context "Methods" do

    	it "has a method array_of_arrays" do
    	  expect(SortPlus.respond_to?(:array_of_arrays)).to be true
    	end

    	it "has a method array_of_hashes" do
    	  expect(SortPlus.respond_to?(:array_of_hashes)).to be true
    	end

    	it "has a method hash_of_arrays" do
    	  expect(SortPlus.respond_to?(:hash_of_arrays)).to be true
    	end

    	it "has a method hash_of_hashes" do
    	  expect(SortPlus.respond_to?(:hash_of_hashes)).to be true
    	end

    	it "has a method hash_by_keys" do
    	  expect(SortPlus.respond_to?(:hash_by_keys)).to be true
    	end

    end

  end

  context "Implementation" do

  	context "array_of_arrays" do

  	  context "no element repetition" do

        it "sorts correctly an array of arrays in the ascending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,2,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_of_arrays(orig,2,true)).to eq([ [9,3,1,5], [5,1,2,6], [1,4,3,7], [8,2,4,9] ])
  	    end

  	    it "sorts correctly an array of arrays in the descending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,2,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_of_arrays(orig,2,false)).to eq([ [9,3,1,5], [5,1,2,6], [1,4,3,7], [8,2,4,9] ].reverse)
  	    end
 
      end

  	  context "element repetition" do

        it "sorts correctly an array of arrays in the ascending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,3,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_of_arrays(orig,2,true)).to eq([ [9,3,1,5], [1,4,3,7], [5,1,3,6], [8,2,4,9] ])
  	    end

  	    it "sorts correctly an array of arrays in the descending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,3,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_of_arrays(orig,2,false)).to eq([ [9,3,1,5], [1,4,3,7], [5,1,3,6], [8,2,4,9] ].reverse)
  	    end
 
      end

  	end

  	context "array_of_hashes" do

  	  it "sorts correctly an array of hashes in the ascending order" do
  	  	
  	  end

  	  it "sorts correctly an array of hashes in the descending order" do
  	  	expect(false).to be true
  	  end

  	end

  end

end
