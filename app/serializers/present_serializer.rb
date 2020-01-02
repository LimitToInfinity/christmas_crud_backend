class PresentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :ratings

  attribute :ratings do |present|
    present.ratings.map do |rating|
      {
        stars: rating.stars,
        description: rating.description,
        id: rating.id,
        present_id: rating.present_id
      }
    end
  end
end
