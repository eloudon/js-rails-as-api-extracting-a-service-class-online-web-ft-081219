class SightingSerializer

  def initialize(sightning_object)
    @sightning = sightning_object
  end

  def to_serialized_json
    @sighting.to_json(:include => {
    :bird => {:only => [:name, :species]},
    :location => {:only => [:latitude, :longitude]}
  }, :except => [:updated_at])
 end
end
