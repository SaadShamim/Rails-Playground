# == Schema Information
#
# Table name: moderators
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ModeratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
