# == Schema Information
#
# Table name: indicated_talents
#
#  id             :bigint           not null, primary key
#  full_name      :text
#  matric_no      :string           default(""), not null
#  talent_options :text             default([]), is an Array
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_indicated_talents_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class IndicatedTalent < ApplicationRecord
  belongs_to :user

  TALENTOPTIONS = ["Web Design", "Multimedia (Cinematography)", "System Hardware Maintanance", "Mobile Apps Development", "Programming", "Computer Engineering"]
end
