class Worktime < ActiveRecord::Base
    belongs_to :user
    
    validates :ure, numericality: { greater_than_or_equal_to: 1 }
end
