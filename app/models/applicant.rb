class Applicant < ApplicationRecord
  belongs_to :job
  has_one_attached :resume

  validates_presence_of :first_name, :last_name, :email

  enum stage: {
    application: 'application',
    interview: 'interview',
    offer: 'offer',
    hired: 'hired',
  }

  enum status: {
    active: 'active',
    inactive: 'inactive',
  }

  def name
    [first_name, last_name].join(' ')
  end
end
