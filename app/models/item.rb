# == Schema Information
#
# Table name: items
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  rate       :float
#  unit       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#  iclass_id  :integer
#  s_rate     :float
#

class Item < ActiveRecord::Base
belongs_to :iclass
has_many :line_items
validates_presence_of :name, :rate , :unit 
validates_numericality_of :rate
end
