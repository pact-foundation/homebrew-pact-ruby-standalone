class PactRubyStandalone < Formula
  desc "Standalone pact command-line executable using the Ruby Pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.82/pact-1.88.82-osx.tar.gz"
  version "1.88.82"
  sha256 "733e75e068661a2daf4581db610968045c8722fe8b49434b3452b4ec79903a2f"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end
end
