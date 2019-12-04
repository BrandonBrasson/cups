class CreateUserCupcakes < ActiveRecord::Migration
  def change
add_column :cupcakes, :creator_id, :integer
  end
end
