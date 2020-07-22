# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LiveViewIntro.Repo.insert!(%LiveViewIntro.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias LiveViewIntro.Repo
alias LiveViewIntro.Movies.Movie

%Movie{
  title: "Os Vingadores",
  director: "Joss Whedon",
  rating: 5
}
|> Repo.insert!()

%Movie{
  title: "Vingadores: A Era de Ultron",
  director: "Joss Whedon",
  rating: 4
}
|> Repo.insert!()

%Movie{
  title: "Vida de Inseto",
  director: "John Lasseter",
  rating: 4
}
|> Repo.insert!()

%Movie{
  title: "A Viagem de Chihiro",
  director: "Hayao Miyazaki",
  rating: 5
}
|> Repo.insert!()

%Movie{
  title: "O Meu Amigo Totoro",
  director: "Hayao Miyazaki",
  rating: 3
}
|> Repo.insert!()

%Movie{
  title: "Click",
  director: "Frank Coraci",
  rating: 3
}
|> Repo.insert!()

%Movie{
  title: "Volta ao mundo em 80 dias",
  director: "Frank Coraci",
  rating: 2
}
|> Repo.insert!()

%Movie{
  title: "Baby Driver",
  director: "Edgar Wright",
  rating: 5
}
|> Repo.insert!()

%Movie{
  title: "Os Sete Magníficos",
  director: "Antoine Fuqua",
  rating: 4
}
|> Repo.insert!()

%Movie{
  title: "Up - Altamente!",
  director: "Pete Docter",
  rating: 4
}
|> Repo.insert!()
