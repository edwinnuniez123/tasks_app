class Task < ActiveRecord::Base
  attr_accessible :description, :priority
  validates_presence_of :description
  validates :priority, numericality: {greater_them: 0}
 validates_uniqueness_of :description
 before_validation :clean_description
 #hodes
 belongs_to :user
 
 private
 def clean_description
    if  self.description.present?
        self.description.strip.capitalize!
    end
 end       
end
