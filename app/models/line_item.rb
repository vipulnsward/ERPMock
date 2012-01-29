class LineItem < ActiveRecord::Base
belongs_to :item
belongs_to :p_order
#belongs_to :supplier
validates_presence_of :qty
validates_numericality_of :qty
end
