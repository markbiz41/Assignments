# == Schema Information
#
# Table name: library
#
#  books          :string
#  magazine       :string
#  cd             :string
#  dvd            :string


class Library < ActiveRecord::Base
  validates :books, presence: true
  validates :magazines, presence: true
  validates :cd, presence: true

  has_many :books, dependent: :destroy
  has_many :magzines, dependent: :destroy
  has_many :cd, dependent: :destroy

end
