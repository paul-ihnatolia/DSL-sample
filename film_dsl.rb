
FILM_COLLECTION = FilmCollection.new

def film &block
    new_film = Film.new
    new_film.instance_eval &block
    FILM_COLLECTION.add_film new_film
end
