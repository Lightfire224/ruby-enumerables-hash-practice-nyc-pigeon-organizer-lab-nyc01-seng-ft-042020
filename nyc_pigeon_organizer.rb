def nyc_pigeon_organizer(pigeon_data)
    hash = {}
    data.each do |test, hash|
        hash.each do |features, array|
            array.each do |name|
                if !hash.has_key?(name)
                    hash[name] = {}
                end
                
                if !hash[name].has_key?(test)
                    hash[name][test] = []
                end
                
                if !hash[name][test].include?(features)
                    hash[name][test] << features.to_s
                end
            end
        end
    end
    hash
end
