class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.integer :emp_sal
      t.datetime :emp_doj

      t.timestamps
    end
  end
end
