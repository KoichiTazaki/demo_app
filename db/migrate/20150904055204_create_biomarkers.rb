class CreateBiomarkers < ActiveRecord::Migration
  def change
    create_table :biomarkers do |t|
      t.string :marker
      t.string :matrix
      t.string :purpose
      t.string :decision
      t.string :evidence_level
      t.string :analyte_type
      t.string :clinical_relevance
      t.integer :project_id

      t.timestamps
    end
  end
end
