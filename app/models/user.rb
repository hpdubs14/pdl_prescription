class User
  include MongoMapper::Document
  key :full_name, String
  key :email_address, String

  one :patient
  one :general_dentist
    
  validates :full_name,     :presence => true,
            :length => {:maximum => 50}
            
  validates :email_address, :presence => true,

    
end







