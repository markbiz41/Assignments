# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  title          :string
#  author         :string
#  copyright_date :date
#  story_contents :text
#  user_reviews   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :copyright_date, presence: true

  belongs_to :library
  has_many :books, dependent: :destroy
  has_many :magazines, dependent: :destroy
end
