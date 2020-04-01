require 'pry'
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

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
      #binding.pry
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
