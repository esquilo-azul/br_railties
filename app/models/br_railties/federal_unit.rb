class BrRailties::FederalUnit < ActiveRecord::Base
  validates :acronym, presence: true, uniqueness: { :case_sensitive => false }, length: { in: 2..2 }
  validates :name, presence: true, uniqueness: { :case_sensitive => false }

  def acronym=(value)
    self[:acronym] = value.to_s.upcase
  end
end
