defmodule Extripe.Mixfile do
  use Mix.Project

  def project do
    [app: :extripe,
     version: "1.2.2",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [{:poison, "~> 3.1"},
     {:httpoison, "~> 0.13"},
     {:ex_doc, "~> 0.13", only: :dev}]
  end

  defp description do
    "Stripe API wrapper"
  end

  defp package do
    [files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Po Chen"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/princemaple/extripe"}]
  end
end
