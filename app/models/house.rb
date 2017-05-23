class House < ActiveRecord::Base
  validates :house_id, presence: true

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end
