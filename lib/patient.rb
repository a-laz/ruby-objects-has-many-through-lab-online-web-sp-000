class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient.name == self.name
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
