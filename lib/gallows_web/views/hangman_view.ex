defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def turn(left, target) when target >= left, do: "opacity: 1"
  def turn(_, _), do: "opacity: 0.1"

  def game_over?(state) do
    state in [:won, :lost]
  end

  def concat_letters(letters) do
    letters
    |> Enum.join(" ")
  end

end
