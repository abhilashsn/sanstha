module ApplicationHelper

	def student_details
		"#{@student.name.capitalize}"
	end


	def weekday
	 "#{Student.joins(:batches).where("batches.name =?", "weekdays")}"
	end

end
 