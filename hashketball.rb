# Write your code here!
require 'pry'

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :number => 0, 
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12, 
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
        {:player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14, 
        :points => 12, 
        :rebounds => 12, 
        :assists => 12,
        :steals => 12, 
        :blocks => 12,
        :slam_dunks => 7},
        {:player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19, 
        :points => 26,
        :rebounds => 12,
        :assists => 6, 
        :steals => 3, 
        :blocks => 8,
        :slam_dunks => 5},
        {:player_name => "Jason Terry",
        :number => 31,
        :shoe => 15, 
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1},
        ]
      },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turqouise", "Purple"],
      :players => [{
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
        {:player_name => "Bismak Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10},
        {:player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
        {:player_name => "Brendan Haywood",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12}
      ]
  }
}
end
# checked using pry, game_hash works

#num_points_scored takes argument of player's name and returns number of points scored by 

# location = home or away
def num_points_scored(player_name)
  game_hash.each do |location, data|
    data.each do |attribute, data|
      if attribute == :players
        data.each do |player, stats|
          if player ==  player_name
            return stats[:points]
      end 
    end
  end
end

def shoe_size(player_name)
  shoe_size = nil
  game_hash.each do |location, data|
   game_hash[location][:players].each do |player|
      if player[:player_name] == player_name
        shoe_size = player[:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team)
  game_hash.each do |location, data|
    if data[:team_name] == team
      return data[:colors]
    end
  end
end 

def team_names
  game_hash.collect do |location, data|
    data[:team_name]
  end
end

def player_numbers(team)
  number_ary = ["empty"]
  game_hash.flat_map do |location, team_data|
    if team_data[:team_name] == team
      team_data.collect do |attribute, data|
        if attribute == :players
          number_ary = data.collect {|player, plyr_stats| plyr_stats[:number]}
        end
      end
    end
  end
  number_ary
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |player, plyr_stats|
          if player == name
            return plyr_stats
          end
        end
      end
    end
  end
  nil
end

# first find player with largest foot shoe_size
# then return that player's no. of rebounds
def big_shoe_rebounds
  
end
# wat 
# I don't know if my code works but my phone call is tomorrow so I am submitting what I have! 
# I can't figure out how to test it properly with pry.... 

binding.pry


array = ["one","two","three","four"]
  array2
  array.collect do |number|
    "#{number}s"
  end








