class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.11"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.11/pact-2.4.11-osx-x86_64.tar.gz"
      sha256 "fb58020f561c96c3cd0b6c487f1380c5adcf12c9ff29a43c07f9bfc9cc5c6792"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.11/pact-2.4.11-osx-arm64.tar.gz"
      sha256 "e377ec659f9196aa8463fbdf9fa1ccc5ed708615ae5d16691fa78fe27a5cb8c2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.11/pact-2.4.11-linux-x86_64.tar.gz"
      sha256 "53ce2367e1c8139ca31128d7de908ac2fea1e0c2cdcc32d9eca666f56edc83e0"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.11/pact-2.4.11-linux-arm64.tar.gz"
      sha256 "ae03d2a9bd9a22953beae73b9e35cb49d6bab7f258e3c70b1761ae7e291d7dff"
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
