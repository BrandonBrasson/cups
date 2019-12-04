class CreateChangeCupcakesColumnName < ActiveRecord::Migration
  def change
      rename_column(:cupcakes, :creator_id, :user_id)
  end
end
