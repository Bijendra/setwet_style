class ContactUs
  include Mongoid::Document

  field :full_name, type: String
  field :email, type: String
  field :phone_no, type: Integer
  field :address, type: String
  field :country, type: String
  field :issue_type, type: String
  field :query, type: String
  field :attachment, type: String
end
