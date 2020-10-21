
  
Task 1
You are to write a migration for users table to add new columns `first_name, last_name, job_title, birth_date`. All but `birth_date` is a datetime column which will include timezone
sol:
class AddCilumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job_title, :string
    add_column :users, :birth_date, :datetime
  end
end

  Task 2
Create a new model called `PhoneNumber` which should include the following properties. 

id: type: integer
number: type: integer
country: type: integer
isMobile: type: boolean
createdAt: type: datetime
updatedAt: type: datetime

sol: rails generate model PhoneNumber number:integer country:inetger isMobile:boolean 
  
  
Task 3
Create many-to-many relationships for `Users` model with `PhoneNumbers` model
class User < ApplicationRecord
  has_and_belongs_to_many :phone_numbers
end
  
class PhoneNumber < ApplicationRecord
  has_and_belongs_to_many :users
end
  
  task 4
  Create CRUD for Users

  sol: rails generate contorller Users
    
    
 
