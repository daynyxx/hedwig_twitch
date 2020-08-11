defmodule HedwigTwitch.Mixfile do
  use Mix.Project
  @description """
    An adapter for Hedwig made to work with the twitch IRC client
  """

  def project do
    [
      app: :hedwig_twitch,
      version: "0.1.0",
      elixir: "~> 1.2",
      name: "hedwig_twitch",
      description: @description,
      package: package(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :hedwig, :exirc]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:hedwig, "~> 1.0.1"},
      {:exirc, "~> 2.0.0"},
      {:ex_doc, "~> 0.18", only: :dev},
      {:poison, "~> 4.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Chris Holmes"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/daynyxx/hedwig_twitch"},
    ]
  end
end
