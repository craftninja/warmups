class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Smith"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [{:name => "Fido", :size => :large, :owner => joe},
             {:name => "Yapper", :size => :small, :owner => joe},
             {:name => "Bruiser", :size => :large, :owner => joe},
             {:name => "Tank", :size => :huge, :owner => sarah},
             {:name => "Beast", :size => :large, :owner => sarah},
             {:name => "Harleigh", :size => :medium, :owner => andrew},
             {:name => "Trixie", :size => :small, :owner => andrew},]
  end

  # only edit below this line

  def small_dogs
    small_dogs = []
    @dogs.cycle do |dog|
      small_dogs << dog if dog[:size] == :small
      break if dog[:name] == "Trixie"
    end
    small_dogs
  end

  def huge_dog
    huge_dogs = []
    @dogs.cycle do |dog|
      huge_dogs << dog if dog[:size] == :huge
      break if dog[:name] == "Trixie"
    end
    huge_dogs.first
  end

  def large_dog_names
    large_dogs = []
    @dogs.cycle do |dog|
      large_dogs << dog[:name] if dog[:size] == :large
      break if dog[:name] == "Trixie"
    end
    large_dogs
  end

  def joes_large_dogs
    joes_large_dogs = []
    @dogs.cycle do |dog|
      joes_large_dogs << dog[:name] if dog[:size] == :large && dog[:owner][:name][:first] == 'Joe'
      break if dog[:name] == "Trixie"
    end
    joes_large_dogs
  end

  def sizes
    dog_sizes = []
    @dogs.cycle do |dog|
      dog_sizes << dog[:size]
      dog_sizes.uniq!
      break if dog[:name] == "Trixie"
    end
    dog_sizes
  end

  def owners
    dog_owners = []
    @dogs.cycle do |dog|
      owner = "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      dog_owners << owner
      dog_owners.uniq!
      break if dog[:name] == "Trixie"
    end
    dog_owners
  end

  def average_owners
    dog_owners = []
    @dogs.cycle do |dog|
      owner = "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      dog_owners << owner if dog[:owner][:owner_quality] == AVERAGE
      dog_owners.uniq!
      break if dog[:name] == "Trixie"
    end
    dog_owners
  end
end