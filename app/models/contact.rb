class Contact < ActiveRecord::Base
 validates :name, :email, :content, presence: true
 devise :confirmable
end
