require 'spec_helper'

describe Event do
	before(:each) do
		@event = Event.new(   :id => "",
					:name => "chilambarasan",
					:from_time => "2010-5-24",
					:to_time => "2010-5-26",
					:age => "4",
					:status => "access",
					:dates =>"2012-05-24",
					:coach =>"chilmabu",
					:tuition => "155"
					)
end
	it { should belong_to(:programlist)}
	it { should belong_to(:player)}


end