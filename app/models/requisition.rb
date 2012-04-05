# == Schema Information
#
# Table name: requisitions
#
#  id         :integer         not null, primary key
#  issue      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


class Requisition < ActiveRecord::Base
has_many :line_items, :dependent => :destroy

accepts_nested_attributes_for :line_items#, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
