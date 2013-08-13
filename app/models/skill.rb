class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :name, uniqueness: true
  # Remember to create a migration!

  def user_with_proficiency(number)
    Proficiency.where(proficiency: number)
  end

end
