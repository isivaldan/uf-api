class CreateUfPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :uf_prices do |t|
      t.datetime :date
      t.integer :uf

      t.timestamps
    end
  end
end
