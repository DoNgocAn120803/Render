class CreateDangs < ActiveRecord::Migration[7.1]
  def change
    create_table :dangs do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
