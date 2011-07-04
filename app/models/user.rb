class User
  include MongoMapper::Document
 
 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :full_name, :email, :password, :password_confirmation, :remember_me
  
  key :full_name, String
  key :email, String
  key :password, String
  key :password_confirmation, String

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







