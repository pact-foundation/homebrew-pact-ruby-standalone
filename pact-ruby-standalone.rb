class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.1"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.1/pact-2.4.1-osx-x86_64.tar.gz"
      sha256 "8b1de9643c8b34977a51ba202fbb7a5a552bc228dcb07c4497b110e45037e6de"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.1/pact-2.4.1-osx-arm64.tar.gz"
      sha256 "2e872e30d11d569dc2f77dc9c71ce0a54939ab35867635e2a8912874a91eecf1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.1/pact-2.4.1-linux-x86_64.tar.gz"
      sha256 "938ac7c5f0dd2fa8b2ec37b4e8acfce72cafea830babb2b6340268402a6bca40"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.1/pact-2.4.1-linux-arm64.tar.gz"
      sha256 "0f9a0dccb1ade52d8be876033ecf68337a1c0b6f311aadb0200cb023fd9dbb77"
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
