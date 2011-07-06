class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :lang_code
      t.string :lang_name
      t.string :short_code
      t.string :i18n_identifier

      t.timestamps
    end
  end

  def self.down
    drop_table :languages
  end
end
