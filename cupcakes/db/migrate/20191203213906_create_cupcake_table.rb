class CreateCupcakeTable < ActiveRecord::Migration
   def change
      create_table :cupcakes do |t|
         t.string :name
         t.string :price
      end
   end
end
