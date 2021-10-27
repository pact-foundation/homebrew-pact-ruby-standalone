class PactRubyStandalone < Formula
  desc "Standalone pact command-line executable using the Ruby Pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.78/pact-1.88.78-osx.tar.gz"
  version "1.88.78"
  sha256 "07dc778b596c7b6f3d9de2b39ec7e25c5dc99d1410a9f3f7606bc303a3fe33e9"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Run 'pact-mock-service help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end
end
