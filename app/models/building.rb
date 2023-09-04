class Building < ApplicationRecord
  belongs_to :city
  has_and_belongs_to_many :characteristics   
  has_many :apartments, dependent: :destroy
  accepts_nested_attributes_for :characteristics, reject_if: :no_name_characteristic



  def no_name_characteristic(attributes)
    attributes['name'].blank?
    end
end
