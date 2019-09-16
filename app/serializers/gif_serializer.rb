class GifSerializer
  include FastJsonapi::ObjectSerializer
    attributes :id, :url
end
