class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    validate :clickbait?

    

   

    def clickbait?
    
    unless title.match(/(Won't Believe)|(Top \d)|(Secret)|(Guess)/)
        errors.add(:title, "not clickbait")
    end
         
    end
    


end
