class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :code
      t.string :area
      t.string :stage
      t.string :tmcp_rep
      t.string :bm_rep
      t.string :priority
      t.string :fih_target

      t.timestamps
    end
  end
end
