defmodule NervesSystemAg150.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_ag150,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.1.0"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br"},
     #{:nerves_system_br, "~> 0.4.1"},
     {:nerves_toolchain_i586_unknown_linux_gnu, "~> 0.6.1"}]
  end

  defp description do
    """
    Nerves System - AG150 http://www.logicsupply.com/ag150/?___store=en_us
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_ag150"}]
  end
end
