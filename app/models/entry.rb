class Entry < ApplicationRecord
  belongs_to :patient, class_name: "User", optional: true
  has_many :patient_entries
  has_many :graphs, through: :patient_entries
  validates :date, presence: true
  validates :value, presence: true
end
