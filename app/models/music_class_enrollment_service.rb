class MusicClassEnrollmentService
  include Singleton
  
  def enroll(customer, music_class)
    if music_class.customers.count < music_class.capacity
      music_class.customers << customer
    else
      raise 'Class is full!'
    end
  end
  
  def cancel_enrollment(customer, music_class)
    music_class.customers.delete(customer)
  end
end
