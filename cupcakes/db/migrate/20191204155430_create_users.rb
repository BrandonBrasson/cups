class CreateUsers < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
        t.string :name
        t.string :url
  end
end
