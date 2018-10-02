class City < ApplicationRecord
  belongs_to :country

  validates :name, :presence => true
  validates :name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }

  validates :country_id, :presence => true
  validates :country_id, :numericality => true
end
