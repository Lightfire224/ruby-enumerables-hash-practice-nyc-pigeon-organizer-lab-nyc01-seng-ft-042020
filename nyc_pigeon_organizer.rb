def nyc_pigeon_organizer(data)
    hash = {}
    data.each do |prop, hash|
        hash.each do |features, array|
            array.each do |name|
                if !hash.has_key?(name)
                    hash[name] = {}
                end
                
                if !hash[name].has_key?(prop)
                    hash[name][prop] = []
                end
                
                if !hash[name][prop].include?(features)
                    hash[name][prop] << features.to_s
                end
            end
        end
    end
    hash
end
