class Contact < ActiveRecord::Base
 validates :name, :email, :content, presence: true
 device :confirmable
end
