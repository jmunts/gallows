defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  def game_over?(state) do
    state in [:won, :lost]
  end

  def concat_letters(letters) do
    letters
    |> Enum.join(" ")
  end

  @responses %{
    :good_guess   => { "success", "Good guess!" },
    :bad_guess    => { "warning", "Sorry, bad move" },
    :already_used => { "info", "You already used that" },
    :won          => { "success", "You WON!" },
    :lost         => { "danger",  "You LOST!" },
  }

  def game_status(state) do
    @responses[state]
    |> alert()
  end

  def alert(nil), do: ""
  def alert({class, message}) do
    """
    <div class="alert alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end

end
