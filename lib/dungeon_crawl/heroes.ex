defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  @spec all :: [
          %DungeonCrawl.Character{
            attack_description: <<_::56, _::_*8>>,
            damage_range: Range.t(),
            description: <<_::64, _::_*8>>,
            hit_points: 8 | 12 | 18,
            max_hit_points: 8 | 12 | 18,
            name: <<_::40, _::_*8>>
          },
          ...
        ]
  def all, do: [
    %Character{
      name: "Knight",
      description: "Knight has strong defense, consistent damage and moderate intelligence.",
      hit_points: 18,
      max_hit_points: 18,
      damage_range: 4..5,
      intelligence: 9,
      attack_description: "a sword"
    },
    %Character{
      name: "Wizard",
      description: "Wizard has strong attack and fabulous intelligence, but low health.",
      hit_points: 8,
      max_hit_points: 8,
      damage_range: 6..10,
      intelligence: 18,
      attack_description: "a fireball"
    },
    %Character{
      name: "Rogue",
      description: "Rogue has high variability of attack damage and low intelligence.",
      hit_points: 12,
      max_hit_points: 12,
      damage_range: 1..12,
      intelligence: 5,
      attack_description: "a dagger"
    },
    %Character{
      name: "Berzerk",
      description: "Berzerk has almost limitless attack strength, solid defense but poor intelligence.",
      hit_points: 15,
      max_hit_points: 20,
      damage_range: 12..15,
      intelligence: 1,
      attack_description: "everything he grabs"
    }

  ]
end
