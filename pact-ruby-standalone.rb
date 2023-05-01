class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.0"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.0/pact-2.0.0-osx-x86_64.tar.gz"
      sha256 "025b1b8de4c99f463960a71ad720b0b92bda19bfed2130cfdd819a2af6c27ee1"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.0/pact-2.0.0-osx-arm64.tar.gz"
      sha256 "d91d2fa7596b20afdd6d1d4f1fe0e1353ceb249892b48b4bbd85a303f7f4ff31"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.0/pact-2.0.0-linux-x86_64.tar.gz"
      sha256 "42fb3a74a1ca1504b0bbc541d3521a01a32eeb513bf5edceae3ffb9d760d203d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.0/pact-2.0.0-linux-arm64.tar.gz"
      sha256 "3a421a35d2ab1da13fc4a99a1506f7243e9702ebacd5cc5fee710cf55e2d5dd5"
    end
  end

  def install
    # pact-ruby-standalone
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)"
  end

  test do
    system "#{bin}/pact", "help"
    system "#{bin}/pact-broker", "help"
    system "#{bin}/pact-message", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-plugin-cli", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end
