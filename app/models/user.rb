class User
  include MongoMapper::Document
   
 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  
  # TODO - Add mailer set-up to enable :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
         

  # Setup accessible (or protected) attributes for your model
 attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  key :name, String
  key :email, String
  key :password, String
  key :password_confirmation, String
  key :encrypted_password, String
  key :password_salt, String
  key :reset_password_token, String
  key :remember_token, String
  key :remember_created_at, String
  key :sign_in_count, Integer
  key :current_sign_in_at, Time
  key :current_sign_in_ip, String
  timestamps!
  
  key :role_ids, Array

  # many  :roles, :in => :role_ids  
#     Validations ___________

  RegEmailName = '[\w\.%\+\-]+'
  RegDomainHead = '(?:[A-Z0-9\-]+\.)+'
  RegDomainTLD = '(?:[A-Z]{2}|com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum)'
  RegEmailOk = /\A#{RegEmailName}@#{RegDomainHead}#{RegDomainTLD}\z/i

    
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    
  
  validates :name,      :presence => true,
                        :length => {:maximum => 50}
            
  validates :email,     :presence => true,
                        :format => { :with => email_regex },
                        :uniqueness => { :case_sensitive => false }
                        
  validates :password,  :presence     => true,
                        :confirmation => true,
                        :length       => { :within => 6..40 }
    
end







