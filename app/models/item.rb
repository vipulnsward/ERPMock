class Item < ActiveRecord::Base
belongs_to :iclass
validates_presence_of :name, :rate , :unit 
validates_numericality_of :rate
end
