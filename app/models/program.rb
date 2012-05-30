class Program < ActiveRecord::Base
has_many :programlists,:class_name=>'Program',:foreign_key=>'program_id'
accepts_nested_attributes_for :programlists
belongs_to :player
end
