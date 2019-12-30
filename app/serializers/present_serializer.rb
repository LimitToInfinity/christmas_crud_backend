class PresentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :ratings
end
