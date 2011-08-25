class Prescription
  include MongoMapper::Document

  key :p_id, String
  key :job_array, Array
end
