class PactRubyStandalone < Formula
  desc "Standalone pact command-line executable using the Ruby Pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.77/pact-1.88.77-osx.tar.gz"
  version "1.88.77"
  sha256 "231519de60d24b2be169cb3dd654bd3cb0006df4d7047654dab478dbe4a6fa89"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Run 'pact-mock-service help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end
end
