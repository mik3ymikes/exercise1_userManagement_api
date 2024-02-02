class User < ApplicationRecord
    validates :full_name, presence: true, length: { maximum: 50 }
    validates :email , presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, length: { minimum: 5, maximum: 255 }
    validates :age, presence: true, numericality: { only_integer: true }, inclusion: { in: 18..100 }

    before_create :email_Lower

  
    private

    def email_Lower
        self.email=email.downcase
    end
end
