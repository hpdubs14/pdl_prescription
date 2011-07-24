class Task
  include MongoMapper::Document
  
  key :name, String, :required => true
end
