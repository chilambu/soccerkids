require 'spec_helper'

describe Programlist do
	before(:each) do
		@programlist = Programlist.new(   :id => "",
					:name => "chilambarasan",
					:type => "soccer"
					)
end

	it { should have_many(:events)}
	it { should belong_to(:program)}


end