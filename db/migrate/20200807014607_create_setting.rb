class CreateSetting < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.integer :request_count
    end
  end
end
