defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def game_over?(state) do
    state in [:won, :lost]
  end

  def concat_letters(letters) do
    letters
    |> Enum.join(" ")
  end

end
