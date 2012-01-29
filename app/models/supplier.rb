class Supplier < ActiveRecord::Base
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
has_many :line_items
has_many :supplier
validates_presence_of :name, :desc, :street, :state, :country, :zip, :mail, :altmail, :ct1, :ct2
validates :desc , :length =>{:minimum =>10}
validates_numericality_of :zip
validates :mail, :altmail , :format   => { :with => email_regex }


end
