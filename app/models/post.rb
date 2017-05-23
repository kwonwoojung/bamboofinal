class Post < ActiveRecord::Base
    belongs_to :category
    has_many :comments
    
    def self.search(search)
        if search
          where('title LIKE ?', "%#{search}%") && where('body LIKE ?', "%#{search}%") && where('username LIKE ?', "%#{search}%")
        else
          all
        end
    end
end
