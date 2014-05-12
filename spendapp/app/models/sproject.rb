class Sproject < ActiveRecord::Base
  attr_accessible :amtremaining, :budget, :date, :name, :note, :spend
  validates :name, :budget, presence: true

  belongs_to :user
  validates :user_id, presence: true
end
