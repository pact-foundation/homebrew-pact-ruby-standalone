class PactRubyStandalone < Formula
  desc "Standalone pact command-line executable using the Ruby Pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.79/pact-1.88.79-osx.tar.gz"
  version "1.88.79"
  sha256 "7467f22cb858d47e680cd8da0dad66a121e1d413a219a8050bb447ba63d92bd4"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end
end
