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

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
