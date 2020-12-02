require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |key, value|
    value.each do |first, names|
      names.each do |name|
        # create names pointing to a hash and its attributes
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][key]
            new_hash[name][key] = []
        end
        new_hash[name][key] << first.to_s
      end
    end
  end
  binding.pry
  new_hash
end
