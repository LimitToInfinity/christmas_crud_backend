class PresentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :ratings

  attribute :ratings do |present|
    present.ratings.map do |rating|
      {stars: rating.stars, description: rating.description}
    end
  end
end
