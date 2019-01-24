class Weather < Formula
  desc "A command line tool to run PACT mock service"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.63.0/pact-1.63.0-osx.tar.gz"
  sha256 "a9eb9ada7595978cd70a3d67728f88d7bd1c9e39302dfac769232a706268f8c5"
  version "1.63.0"

  bottle :unneeded

  def install
    bin.install "pact-ruby-standalone"
  end
end