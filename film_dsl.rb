require './film.rb'

def film name, &block
    new_film = Film.new name
    new_film.instance_eval &block
    #print film info in console
    new_film.print_details
    FILM_COLLECTION.add_film new_film
end
