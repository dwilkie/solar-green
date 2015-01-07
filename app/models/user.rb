class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  has_one :address
  has_many :inventory_invoices

  belongs_to :branch

  accepts_nested_attributes_for :address

  validates :name, :branch, :phone, :email, presence: true

  delegate :home_number,:street,:group,:quartier,:district,:city,:country, to: :address

  def to_s
    " #{name} "
  end

  private

  def password_required?
    !persisted? || !password.blank? || !password_confirmation.blank?
  end

  def email_required?
    false
  end
end
