class Person < ApplicationRecord
  validate :name, presence: true 
  primary_key: :id
end
