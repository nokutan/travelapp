class Tag < ApplicationRecord
    #Tagはプランと多対多
    
    #validates
    validates :title,presence: true
    validates :body,presence: true
    validates :url,presence: true
end
