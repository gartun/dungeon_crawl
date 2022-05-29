defmodule DungeonCrawl.CLI.HeroChoice do
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("Start by choosing your hero:")

    heroes = DungeonCrawl.Heroes.all()

    heroes
      |> Enum.map(&(&1.name))
      |> display_options
  end

  def display_options(opts) do
    opts
      |> Enum.with_index(1)
      |> Enum.each(fn {opt, ind} ->
        Shell.info("#{ind} - #{opt}")
      end)

    opts
  end
end
