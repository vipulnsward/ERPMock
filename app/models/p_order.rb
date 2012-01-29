class POrder < ActiveRecord::Base

has_many :line_items, :dependent => :destroy
belongs_to :supplier

accepts_nested_attributes_for :line_items#, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
