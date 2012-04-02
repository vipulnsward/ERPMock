# == Schema Information
#
# Table name: sundry_grns
#
#  id          :integer         not null, primary key
#  bill        :string(255)
#  billdate    :string(255)
#  issue       :string(255)
#  supplier_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class SundryGrn < ActiveRecord::Base

has_many :line_items, :dependent => :destroy
belongs_to :supplier

accepts_nested_attributes_for :line_items#, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
