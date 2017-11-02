defmodule GallowsWeb.Views.Helpers.GameStateHelper do

  import Phoenix.HTML, only: [ raw: 1 ]

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
