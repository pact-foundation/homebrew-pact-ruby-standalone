class PactRubyStandalone < Formula
  desc "Standalone pact command-line executable using the Ruby Pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.90.0/pact-1.90.0-osx.tar.gz"
  version "1.90.0"
  sha256 "aa6c448d5394bd6a9f9ab1a7bb1e329270473bb54c0f994bb2aedc9a6289f1e2"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end
end
