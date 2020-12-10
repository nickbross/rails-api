# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  password   :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :facts
end
