class CreatePrescriptions < ActiveRecord::Migration
  def self.up
    create_table :prescriptions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :prescriptions
  end
end
