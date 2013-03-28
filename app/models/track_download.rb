class TrackDownload
  include Mongoid::Document
  include Mongoid::Timestamps

  field :mobile_count, type: Integer
  field :web_count, type: Integer
end
