defmodule GithubStalking.Mixfile do
  use Mix.Project

  def project do
    [app: :sample_quantum,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded:  Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: applications(Mix.env)]
  end

  defp applications(_all), do: [:logger, :quantum]

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
     {:mix_test_watch, "~> 0.2", only: :dev},
     {:quantum, ">= 1.6.1"},
     {:logger_file_backend, "~> 0.0.6"}
    ]
  end
end
