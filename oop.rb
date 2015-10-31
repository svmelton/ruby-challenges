class Cats
	
	attr_accessor :name, :color
end


class Kasha < Cats

	def clothing
		return "bowtie"
	end
	
end

class Chimera < Cats

	def nose
		return "a rust-colored nose"
	end
end


kasha = Kasha.new 
kasha.name= "Kasha"
kashaname = kasha.name
kasha.color= "brown"
kashacolor = kasha.color


chimera = Chimera.new
chimera.name= "Chimera"
chimeraname = chimera.name
chimera.color= "rust"
chimeracolor = chimera.color


puts "#{kashaname} is super cute and is #{kashacolor} with a #{kasha.clothing}. #{chimeraname} is very handsome and is #{chimeracolor} with a #{chimera.nose}."

puts kasha.inspect
puts chimera.inspect
