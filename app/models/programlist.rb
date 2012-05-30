class Programlist < Program
belongs_to :program,:class_name=>'Program'
has_many :events
accepts_nested_attributes_for :events
end
