class Country < ApplicationRecord
  has_many :cities

  validates :name, :presence => true
  validates :name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }
  validates :name, length: {maximum: 40}

  validates :continent, :presence => true
  validates :continent, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }
  validates :continent, length: {maximum: 14}

  validates :population, :presence => true
  validates :population, :numericality => true

  validates :language, :presence => true
  validates :language, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }

end
