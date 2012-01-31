# == Schema Information
#
# Table name: suppliers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  street     :string(255)
#  state      :string(255)
#  country    :string(255)
#  zip        :integer
#  mail       :string(255)
#  altmail    :string(255)
#  ct1        :string(255)
#  ct2        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Supplier < ActiveRecord::Base
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
has_many :line_items
has_many :tr_accounts
validates_presence_of :name, :desc, :street, :state, :country, :zip, :mail, :altmail, :ct1, :ct2
validates :desc , :length =>{:minimum =>10}
validates_numericality_of :zip
validates :mail, :altmail , :format   => { :with => email_regex }


end
