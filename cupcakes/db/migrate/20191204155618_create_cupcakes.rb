class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :user_cupcakes do |t|
        t.integer :user_id
        t.integer :cupcake_id
  end
end
