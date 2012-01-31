# == Schema Information
#
# Table name: iclasses
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class Iclass < ActiveRecord::Base
validates_presence_of :name 


has_many :items

end
