class Event < ActiveRecord::Base
	belongs_to :programlist,:class_name=>'Program',:foreign_key=>'programlist_id'
belongs_to :player,:foreign_key=>'player_id'
end
