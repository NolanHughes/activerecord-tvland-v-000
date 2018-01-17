class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def catchphrase
    catchphrase
  end
end
