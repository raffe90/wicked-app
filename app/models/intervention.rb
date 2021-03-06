class Intervention < ApplicationRecord
  belongs_to :patient, class_name: "User", optional: true
  has_many :patient_events
  has_many :graphs, through: :patient_events
end
