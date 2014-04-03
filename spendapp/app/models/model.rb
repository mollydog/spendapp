class Model < ActiveRecord::Base
  attr_accessible :available, :budget, :date, :note, :project, :spend
end
