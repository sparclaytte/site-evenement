class CreateContact < ActiveRecord::Migration
  def change
  	create_table :contacts do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :organisation
  		t.string :email
  		t.string :commentaire
  	end
  end
end
