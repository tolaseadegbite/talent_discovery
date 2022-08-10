# == Schema Information
#
# Table name: desired_talents
#
#  id             :bigint           not null, primary key
#  talent_options :text             default([]), is an Array
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_desired_talents_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class DesiredTalentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
