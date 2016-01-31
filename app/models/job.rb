class Job < ApplicationRecord
	validates :name, presence: true
	# after_create_commit { BathBroadcastJob.perform_later self }
end
