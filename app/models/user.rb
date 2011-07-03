class User
  include MongoMapper::Document
  key :full_name, String
  key :email, String
  key :password, String
  key :password_confrimation, String

  one :patient
    
#     Validations ___________
    
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    
  
  validates :full_name, :presence => true,
                        :length => {:maximum => 50}
            
  validates :email,     :presence => true,
                        :format => email_regex
                    #   :uniqueness => true
  validates :password,  :presence     => true,
                        :confirmation => true,
                        :length       => { :within => 6..40 }
    
end







