# == Schema Information
#
# Table name: line_items
#
#  id         :integer         not null, primary key
#  qty        :integer
#  item_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  p_order_id :integer
#  rev_qty    :integer
#  acc_qty    :integer
#

class LineItem < ActiveRecord::Base
belongs_to :item
belongs_to :p_order
#belongs_to :supplier
validates_presence_of :qty
validates_numericality_of :qty
after_initialize :init

    def init
      self.rev_qty  ||= 0           #will set the default value only if it's nil
      self.acc_qty ||= 0 #let's you set a default association
    end

end
