class Comment < ApplicationRecord
    belongs_to :project 
    validates :project_id, :u_name, :content, presence: true 
end
