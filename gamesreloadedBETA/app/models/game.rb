# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  views       :integer
#  ratings     :integer
#  author      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  image       :string(255)
#  swflocation :string(255)
#  category    :string(255)
#

class Game < ActiveRecord::Base
  attr_accessible :author, :authorUrl, :name, :image, :swflocation, :description, :category
  mount_uploader :image, ThumbnailUploader
  mount_uploader :swflocation, FlashUploader
end
