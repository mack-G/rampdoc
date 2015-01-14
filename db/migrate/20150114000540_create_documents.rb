class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string         :title
      t.string         :description
      t.belongs_to     :user
      t.timestamps null: false
    end
  end
end
