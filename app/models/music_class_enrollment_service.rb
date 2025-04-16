class MusicClassEnrollmentService
  include Singleton
  
  def enroll(customer, music_class)
    music_class.customers << customer
    # TODO handle being out of capacity
    # TODO add capacity to music_classes
  end
  
  def cancel_enrollment(customer, music_class)
    music_class.customers.delete(customer)
    # TODO handle being out of capacity
    # TODO add capacity to music_classes
  end
end
