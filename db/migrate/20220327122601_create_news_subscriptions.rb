class CreateNewsSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :news_subscriptions do |t|
      t.string :email, null: false, index: { unique: true }
      t.boolean :enabled, null: false

      t.timestamps
    end
  end
end
