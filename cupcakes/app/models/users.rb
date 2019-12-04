class User < ActiveRecord::Base
  has_many :cupcake
  has_many :cakes


  has_secure_password
  validates_presence_of :username, :password_digest
  validates :username, uniqueness: true

  def bookmark_cupcakes
    self.cupcakes.collect {|b| b.cupcake}
  end

  def add_bookmark(cupcake)
  Cupcake.create(user_id: self.id, cupcake_id: cupcake.id)
    save
  end

  def remove_bookmark(cupcake)
    cupcake = Cupcake.find_by(user_id: self.id,  cupcake_id: cupcake.id)
    cupcake.destroy
    save
  end


end
