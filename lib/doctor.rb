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
    @appointments.collect {|appointment| appointment.patient}
  end
end 
 
