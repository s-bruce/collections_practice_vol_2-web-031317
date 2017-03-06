def begins_with_r(collection)
	collection.all? do |item|
		item.start_with?("r")
	end
end

def contain_a(collection)
	collection.select do |item|
		item.include? "a"
	end
end

def first_wa(collection)
	collection.find do |item|
		item[0..1] == "wa"
	end
end

def remove_non_strings(collection)
	collection.delete_if do |item|
		item.class != String
	end
end

def count_elements(collection)
	collection.each do |item|
		count = collection.count(item)
		collection.uniq!
		item[:count] = count
	end

	collection
end

def merge_data(keys, data)
	merged_data = []

	keys.each do |key_hash|
		key_hash.each do |key, value|
			data.each do |data_hash|
				if data_hash.has_key?(value)
					merged_hash = data_hash[value]
					merged_hash[key] = value
					merged_data << merged_hash
				end
			end
		end
	end

	merged_data
end

def find_cool(collection)
	collection.select {|hash| hash.has_value?("cool")}
end

def organize_schools(schools)
	organized_schools = {}

	schools.each do |school, location|
		city = location[:location]
		organized_schools[city] = []
	end

	schools.each do |school, location|
		city = location[:location]
		organized_schools[city] << school
	end

	organized_schools
end

