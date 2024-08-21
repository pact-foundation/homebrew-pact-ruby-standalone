class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.12"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.12/pact-2.4.12-osx-x86_64.tar.gz"
      sha256 "5fd3cee539ea7c2ca66738caa64eab1d6c327245a55672d92d28a99831c9d5e9"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.12/pact-2.4.12-osx-arm64.tar.gz"
      sha256 "3e807872a109670bcff6e7b6460454549637861ccfa0e924e55c583b6ec76c5f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.12/pact-2.4.12-linux-x86_64.tar.gz"
      sha256 "2177d1b7e842f463d720db7a7feebe65e81dc74c7d79d6f6d4fc307de0c849d6"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.12/pact-2.4.12-linux-arm64.tar.gz"
      sha256 "d2e38c333c68847119b5e407dcf60f87f4f51838c270031201c7c3b5559e9d6b"
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
