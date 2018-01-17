class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    show = shows.collect { |show| show.name }
    character = characters.collect { |character| character.name }
    
  end
end
