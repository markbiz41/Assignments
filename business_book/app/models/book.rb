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
end
