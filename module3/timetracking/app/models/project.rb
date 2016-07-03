class Project < ActiveRecord::Base
has_many :time_entries
has_many :entries, class_name: "TimeEntry"

validates :name, presence: true, 
				 uniqueness: true,
				 length: {maximum: 30}, 
				 format: {with: /[a-zA-z9-9]/}

	def self.clean_old
		Where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end

	def total_hours_in_month(month,year)
		date = Time.new(year, month)
		time_entries.where(
			date: date..date.end_of_month
			)

		hours = entries_in_month.sum { |e| e.hours }
		minutes = entries_in_month.sum { |e| e.minutes}

		(minutes / 60) + hours
	end
end

