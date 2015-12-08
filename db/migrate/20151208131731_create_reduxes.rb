class CreateReduxes < ActiveRecord::Migration
  def change
    create_table :reduxes do |t|

      t.timestamps null: false
    end
  end
end
