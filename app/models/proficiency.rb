class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  # validates :user, uniqueness: { scope: :skill }
  # Remember to create a migration!
end
