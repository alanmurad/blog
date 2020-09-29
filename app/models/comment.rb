class Comment < ApplicationRecord
    belongs_to :article

    validates :name, :email, :body, presence: true
    validates :article_should_be_published

    def article_should_be_published
        errors.add(:article_id, 'is not published yet') if article && !article.published?
    end

    def email_article_author 
        puts "We will notify #{article.user.email} in Chapter 12"
    end 
end
