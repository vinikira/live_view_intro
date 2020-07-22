defmodule LiveViewIntro.Movies.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :director, :string
    field :rating, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :director, :rating])
    |> validate_required([:title, :director, :rating])
  end
end
