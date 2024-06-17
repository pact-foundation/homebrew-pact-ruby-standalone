class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.5"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.5/pact-2.4.5-osx-x86_64.tar.gz"
      sha256 "bc6d48f99c29be6329b51317195d2c436629ed66faacae9d864a33c989d57dbd"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.5/pact-2.4.5-osx-arm64.tar.gz"
      sha256 "d5f94f5dfaa27db1148bec9d442f46d1f928b257896f8b5f4b7b5b43aab87b8a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.5/pact-2.4.5-linux-x86_64.tar.gz"
      sha256 "4c260ce218b770bc89ad6653a06602b1178b00d2cf5546898b1eae51944db157"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.5/pact-2.4.5-linux-arm64.tar.gz"
      sha256 "0ef8cea491d161f8eb1ff35597910d6f11f2bd73c57fc012f598922a33b5d119"
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
