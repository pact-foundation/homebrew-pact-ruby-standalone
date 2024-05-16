class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.4"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.4/pact-2.4.4-osx-x86_64.tar.gz"
      sha256 "c236edb0cffb55426c4a83c9e07546a01fa905ddf6a5aae048ab7a030630849d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.4/pact-2.4.4-osx-arm64.tar.gz"
      sha256 "239f1a8ff698df0fc79e33cd9f3ba2cf0a2b309426163918b124f7f90a5426a0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.4/pact-2.4.4-linux-x86_64.tar.gz"
      sha256 "c3c1949b3f52ed4518b7846c277775cd9a67a5fe723929353409ca6f074e2128"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.4/pact-2.4.4-linux-arm64.tar.gz"
      sha256 "7de2e7f19a49ba417d292adde2c941062a37a5c5dcbe2355fd8f982781c52e92"
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
