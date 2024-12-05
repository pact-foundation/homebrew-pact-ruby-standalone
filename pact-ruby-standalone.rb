class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.20"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.20/pact-2.4.20-osx-x86_64.tar.gz"
      sha256 "8f0864a423bbe8089346a329553bbe2877100d8d68a3bd2028f6c7cc7afca279"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.20/pact-2.4.20-osx-arm64.tar.gz"
      sha256 "b7678d3be89b85b9e6db67aa60f2e5ddffc413dca1dc7eee7843308bdad68cd6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.20/pact-2.4.20-linux-x86_64.tar.gz"
      sha256 "3ceec508137f7007711947b9197e74f2179cf559f72e5fb22f5c18ff53802bf3"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.20/pact-2.4.20-linux-arm64.tar.gz"
      sha256 "615a160bd65ead4f3eeb426fa9857f5b55f91fc011f0a19409a1d38c7932da1e"
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
    system "#{bin}/pact-plugin-cli", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end
