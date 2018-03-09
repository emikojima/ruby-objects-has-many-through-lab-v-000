require 'pry'
class Doctor 
  attr_accessor :name, :add_appointment 
  
  def initialize(name)
    @name = name
    @appointments = []
  end 
  
  def add_appointment(apt)
    @appointments << apt
    appointment.doctor = self 
    #binding.pry 
  end
  
  def appointments
    @appointments
  end 
  
  def patients
    #* The `Doctor` class needs an instance method, `#patients`, that iterates over that doctor's appointments and collects the patient that belongs to each appointment. 

   # binding.pry
    @appointments.collect {|appointment| appointment.patient}
  end
end 
 
