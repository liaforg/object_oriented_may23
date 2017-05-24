class Zombie

@@horde = []
@@plague_level = 10
@@max_speed = 5
@@max_strength = 8
@@default_speed = 1
@@default_strength = 3


  def initialize(speed, strength)
    if speed > @@max_speed
      speed = @@default_speed
    else
      @speed = speed
    end
    if strength >= @@max_strength
      strength = @@default_strength
    else
      @strength = strength
    end
  end

  def encounter
    if outrun_zombie?
      puts "You escaped unscathed!"
    else
    if survive_attack?
      zombie = Zombie.new(@@default_speed, @@default_strength)
      puts "You turned into a zombie!"
    else
      puts "You died!"
    end
   end
  end

  def outrun_zombie?
    my_speed = Random.rand(@@max_speed)
    if my_run > @speed
      true
    else
      false
    end
  end

  def survive_attack?
    my_strength = Random.rand(@@max_strength)
    if my_strength > @strength
      true
    else
      false
    end
  end

  def self.all
    @@horde
  end

  def self.new_day
    @some_die_off
    @spawn
    @increase_plague_level
  end

  def self.some_die_off
    Random.rand(0..10).times do
    @@horde.delete_at (rand(@@horde.length))
  end
    @@horde
  end

  def self.spawn
    Random.rand(@@plague_level + 1).times do
      new_zombie = Zombie.new(Random.rand(1..5), Random.rand(1..8))
      @@horde << new_zombie
    end
  end

  def self.increase_plague_level
    @@plague_level += Random.rand(0..2)
  end



end
