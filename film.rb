class Film
    attr_accessor :name, :genre, :realise_date, :realise_country,
                  :description, :directors, :writers, :stars

    def initializer
        @name = ""
        @genres = []
        @realise_date = nil
        @realise_country = ""
        @description = ""
        @directors = []
        @writers = {}
        @stars = []
    end

    def realise_date=(r_date)
        @realise_date = Date.parse r_date
    end

end
