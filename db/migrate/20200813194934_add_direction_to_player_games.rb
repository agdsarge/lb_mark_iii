class AddDirectionToPlayerGames < ActiveRecord::Migration[6.0]

 def up
    execute <<-SQL
      CREATE TYPE seat_direction AS ENUM ('north', 'east', 'south', 'west');
    SQL
    add_column :player_games, :direction, :seat_direction
  end
  def down
    remove_column :player_games, :direction
    execute <<-SQL
      DROP TYPE project_status;
    SQL
  end 

end
