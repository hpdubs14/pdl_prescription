class User
  include MongoMapper::Document
  key :full_name, String
  key :email, String

  one :patient
    
  validates :full_name,     :presence => true,
            :length => {:maximum => 50}
            
  validates :email, :presence => true
    
end







