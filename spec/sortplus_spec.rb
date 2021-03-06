require "spec_helper"

describe SortPlus do

  context "Configuration" do

  	context "Version" do
  
      it "has a version number" do
        expect(SortPlus::VERSION).not_to be nil
      end

    end

    context "Methods" do

    	it "has a method array_sort" do
    	  expect(SortPlus.respond_to?(:array_sort)).to be true
    	end

    end

  end

  context "Implementation" do

  	context "array_sort - array of arrays" do

  	  context "no element repetition" do

        it "sorts correctly an array of arrays in the ascending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,2,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_sort(orig,2,true)).to eq([ [9,3,1,5], [5,1,2,6], [1,4,3,7], [8,2,4,9] ])
  	    end

  	    it "sorts correctly an array of arrays in the descending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,2,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_sort(orig,2,false)).to eq([ [9,3,1,5], [5,1,2,6], [1,4,3,7], [8,2,4,9] ].reverse)
  	    end
 
      end

  	  context "element repetition" do

        it "sorts correctly an array of arrays in the ascending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,3,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_sort(orig,2,true)).to eq([ [9,3,1,5], [1,4,3,7], [5,1,3,6], [8,2,4,9] ])
  	    end

  	    it "sorts correctly an array of arrays in the descending order" do
  	  	  orig = [ [1,4,3,7], [8,2,4,9], [5,1,3,6], [9,3,1,5] ]
  	  	  expect(SortPlus.array_sort(orig,2,false)).to eq([ [9,3,1,5], [1,4,3,7], [5,1,3,6], [8,2,4,9] ].reverse)
  	    end
 
      end

  	end

  	context "array_sort - array of hashes" do

  	  it "sorts correctly an array of hashes in the ascending order" do
  	  	orig = [
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "ball" },
  	  		     {'alfa' => 2, :beta => 7, :gama => 9, :delta => "droid" },
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "caution" },
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "alphabet" }
  	  		   ]
  	    expect(SortPlus.array_sort(orig,:delta,true)).to eq([{'alfa' => 1, :beta => 4, :gama => 3, :delta => "alphabet" },{'alfa' => 1, :beta => 4, :gama => 3, :delta => "ball" },{'alfa' => 1, :beta => 4, :gama => 3, :delta => "caution" },{'alfa' => 2, :beta => 7, :gama => 9, :delta => "droid" }])
  	  end

  	  it "sorts correctly an array of hashes in the descending order" do
  	  	orig = [
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "ball" },
  	  		     {'alfa' => 2, :beta => 7, :gama => 9, :delta => "droid" },
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "caution" },
  	  		     {'alfa' => 1, :beta => 4, :gama => 3, :delta => "alphabet" }
  	  		   ]
  	    expect(SortPlus.array_sort(orig,:delta,false)).to eq([{'alfa' => 1, :beta => 4, :gama => 3, :delta => "alphabet" },{'alfa' => 1, :beta => 4, :gama => 3, :delta => "ball" },{'alfa' => 1, :beta => 4, :gama => 3, :delta => "caution" },{'alfa' => 2, :beta => 7, :gama => 9, :delta => "droid" }].reverse)
  	  end

  	end

  end

end
