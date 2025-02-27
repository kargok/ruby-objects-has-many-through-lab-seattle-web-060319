class Doctor

	@@all = []

	attr_accessor :name

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date_str)
		# binding.pry
		Appointment.new(patient, date_str, self)
	end

	def appointments
		Appointment.all.select {|appt| appt.doctor == self}
	end

	def patients
		appointments.map {|appt| appt.patient}
	end

end