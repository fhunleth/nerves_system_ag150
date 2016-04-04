use Mix.Config

config :nerves_system_ag150, :nerves_env,
  type: :system,
  build_platform: Nerves.System.Platforms.BR,
  bakeware: [target: "ag150", recipe: "nerves/ag150"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
