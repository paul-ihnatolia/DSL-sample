class Film

    def initialize name
        @name = name
        @genres = nil
        @realise_date = nil
        @realise_country = nil
        @description = nil
        @directors = nil
        @writers = nil
        @stars = nil
    end

    def genres(*genres)
        @genres = genres
    end

    def realise_date r_date
        require 'date'
        @realise_date = Date.parse r_date
    end

    def realise_country rc
        @realise_country = rc
    end

    def description desc
        @description = desc
    end

    def directors *dirs
        @directors = dirs
    end

    def stars *strs
        @stars = strs
    end

    def writers *wrs
        @writers = {} if wrs
        wrs.each do |writer|
            wr_role = writer.split(',')
            @writers[wr_role.first] = wr_role[1..-1].map &:strip!
        end
    end

    def print_details
        instance_variables.each do |iv|
            info = instance_variable_get iv
            puts "#{iv.to_s} -- #{info.to_s}" if info
        end
    end
end
