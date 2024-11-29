class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.18"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.18/pact-2.4.18-osx-x86_64.tar.gz"
      sha256 "b003f330b9c9acb9c7636c1490dc50e2b5b0ad05a2f5914c4c72f36c5262941a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.18/pact-2.4.18-osx-arm64.tar.gz"
      sha256 "be64fe051d00f3ed82dc1c917c89832f10b1eace11713e9d0e080f94c9230ed7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.18/pact-2.4.18-linux-x86_64.tar.gz"
      sha256 "2ab10b4deb13abf15bb02cdb455842acfd08a6cc61d4d890f281fcf5e2068b76"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.18/pact-2.4.18-linux-arm64.tar.gz"
      sha256 "cb9a610a843ebc3b5cbd65811ca99bcc20c13600577c97b7acd52925398c38ab"
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
