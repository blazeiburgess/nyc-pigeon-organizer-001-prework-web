def nyc_pigeon_organizer(data)
  # write your code here!
	new_h = {}
	data.each do |attrib,sp_attrs|
		sp_attrs.each do |sp_attr,vals|
			vals.each do |name|
				new_h[name] ||= { }
				new_h[name][attrib] ||= []
				new_h[name][attrib] << sp_attr.to_s
			end
		end	
	end
	return new_h
end

pigeon_data = {
  :color => {
	    :purple => ["Theo", "Peter Jr.", "Lucky"],
			    :grey => ["Theo", "Peter Jr.", "Ms. K"],
					    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
							    :brown => ["Queenie", "Alex"]
									  },
										  :gender => {
											    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
													    :female => ["Queenie", "Ms. K"]
															  },
																  :lives => {
																	    "Subway" => ["Theo", "Queenie"],
																			    "Central Park" => ["Alex", "Ms. K", "Lucky"],
																					    "Library" => ["Peter Jr."],
																							    "City Hall" => ["Andrew"]
																									  }
																										}

puts nyc_pigeon_organizer(pigeon_data)
