class Branch < ActiveRecord::Base

  has_one :address
  has_many :users
  has_many :inventory_invoices

  accepts_nested_attributes_for :address, allow_destroy: true

  delegate :home_number, :street, :group, :quartier, :district, :city, :country, :branch_id, to: :address

  def to_s
    name.split.map(&:capitalize)*' '
  end
end
