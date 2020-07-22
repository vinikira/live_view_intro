defmodule LiveViewIntro.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :director, :string
      add :rating, :integer

      timestamps()
    end

  end
end
