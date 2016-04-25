# NervesSystemAg150

[![Build Status](https://travis-ci.org/nerves-project/nerves_system_ag150.png?branch=master)](https://travis-ci.org/nerves-project/nerves_system_ag150)

The Logic Supply AG150 is a fanless Intel Atom N2800 platform. This
configuration creates an image that can be copied on to a USB Flash drive or on
to the internal mSATA SSD. The image currently provides access to the IEX prompt
via the front serial port (ttyS0).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add nerves_system_ag150 to your list of dependencies in `mix.exs`:

        def deps do
          [{:nerves_system_ag150, "~> 0.4.0"}]
        end

  2. Ensure nerves_system_ag150 is started before your application:

        def application do
          [applications: [:nerves_system_ag150]]
        end
