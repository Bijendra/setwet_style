class TrackDownload
  include Mongoid::Document

  field :mobile_count, type: Integer
  field :web_count, type: Integer
end
