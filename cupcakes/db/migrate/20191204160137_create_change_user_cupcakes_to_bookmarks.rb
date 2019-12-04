class CreateChangeUserCupcakesToBookmarks < ActiveRecord::Migration
  def change
 rename_table('user_cupcakes', 'bookmarks')
  end
end
