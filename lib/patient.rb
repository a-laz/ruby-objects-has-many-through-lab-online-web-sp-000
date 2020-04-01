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
    appointment = Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient == self
    end
  end

  
end
