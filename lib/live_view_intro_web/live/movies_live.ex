defmodule LiveViewIntroWeb.MoviesLive do
  use LiveViewIntroWeb, :live_view

  alias LiveViewIntro.Movies

  @impl true
  def mount(_params, _session, socket) do
    socket = assign(
      socket,
      director: "",
      rating: "",
      movies: Movies.list_movies()
    )
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~L"""
    <h1>Lista de Filmes</h1>
    <form class="form-movies" phx-change="filter">
      <label for="director">Diretor</label>
      <select id="director" name="director">
        <%= options_for_select(director_options(), @director) %>
      </select>

      <label for="rating">Avaliação</label>
      <select id="rating" name="rating">
        <%= options_for_select(rating_options(), @rating) %>
      </select>
    </form>
    <table>
      <thead>
        <tr>
          <th>Título</th>
          <th>Diretor</th>
          <th>Avaliação</th>
        </tr>
      </thead>
      <tbody>
        <%= for movie <- @movies do %>
        <tr>
          <td><%= movie.title %></td>
          <td><%= movie.director %></td>
          <td><%= movie.rating %></td>
        </tr>
        <% end %>
      </tbody>
    </table>
    """
  end

  @impl true
  def handle_event("filter", %{"director" => director, "rating" => rating}, socket) do
    params = [director: director, rating: rating]

    socket = assign(
      socket,
      params ++ [movies: Movies.list_movies(params)]
    )

    {:noreply, socket}
  end

  defp rating_options() do
   [
     "Todos": "",
     "1 estrela": 1,
     "2 estrelas": 2,
     "3 estrelas": 3,
     "4 estrelas": 4,
     "5 estrelas": 5,
   ]
  end

  defp director_options() do
   [
     "Todos": "",
     "Joss Whedon": "Joss Whedon",
     "John Lasseter": "John 3",
     "Hayao Miyazaki": "Hayao Miyazaki",
     "Frank Coraci": "Frank Coraci",
     "Edgar Wright": "Edgar Wright",
     "Antoine Fuqua": "Antoine Fuqua",
     "Pete Docter": "Pete Docter"
   ]
  end
end
