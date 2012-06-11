require 'spec_helper'

describe Program do
	before(:each) do
		@program = Program.new(   :id => "",
					:name => "chilambarasan",
					:type => "soccer"
					)
end

it { should have_many(:programlists)}


end