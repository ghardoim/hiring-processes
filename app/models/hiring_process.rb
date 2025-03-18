class HiringProcess < ApplicationRecord
    validates :company, :position, :recruiter, :status, presence: true

    before_save do
        self.company = company.upcase
        self.position = position.capitalize
        self.recruiter = recruiter.titleize
        self.status = status.downcase
    end
end
