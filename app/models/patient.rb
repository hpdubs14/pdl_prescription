class Patient
  include MongoMapper::EmbeddedDocument
  
  belongs_to :user
end