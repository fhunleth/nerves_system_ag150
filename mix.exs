defmodule NervesSystemAg150.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_ag150,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_package],
     description: description(),
     package: package(),
     deps: deps(),
     aliases: ["deps.precompile": ["nerves.env", "deps.precompile"]]]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.4.0"},
     {:nerves_system_br, "~> 0.8.1"},
     {:nerves_toolchain_i586_unknown_linux_gnu, "~> 0.9.0"}]
  end

  defp description do
    """
    Nerves System - AG150 http://www.logicsupply.com/ag150/
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", 
             "VERSION", "rootfs-additions", "linux-4.4.defconfig",
             "post-createfs.sh", "syslinux.cfg"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_ag150"}]
  end
end
