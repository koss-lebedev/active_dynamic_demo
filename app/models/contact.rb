class Contact < ApplicationRecord
  has_dynamic_attributes

  validates :first_name, presence: true
end
