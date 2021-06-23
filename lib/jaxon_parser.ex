defmodule Desafio5.JaxonParser do
  "large_file.json"
  |> File.stream!()
  |> Jaxon.Stream.from_enumerable()
  |> Jaxon.Stream.query([:root, "users", :all, "metadata"])
  # |> Stream.map(&(&1["username"], "," , &1["email"], "\n"))
  |> Stream.into(File.stream!("large_file.csv"))

  # |> Stream.run()
end
