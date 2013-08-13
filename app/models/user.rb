class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  # Remember to create a migration!


  def set_proficiency_for(skill, number)
    id = Proficiency.where(skill_id: skill.id, user_id: self.id).pluck(:id).join('').to_i
     Proficiency.update(id, proficiency: number)
  end

  def proficiency_for(skill)
    Proficiency.where(skill_id: skill.id, user_id: self.id).pluck(:proficiency).join('').to_i
  end

end
