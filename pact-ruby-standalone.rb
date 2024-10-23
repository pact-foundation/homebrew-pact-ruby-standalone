class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.15"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.15/pact-2.4.15-osx-x86_64.tar.gz"
      sha256 "1c25fcc092e397564e7ffeb8be13b05edbee348812dee6df8000889baf726f82"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.15/pact-2.4.15-osx-arm64.tar.gz"
      sha256 "9b054cacbcec506abaa51dde705f4eb6ee23d0dcb66c9e3135e7f524f968b204"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.15/pact-2.4.15-linux-x86_64.tar.gz"
      sha256 "f1e576cdec58b8360512ed299bfa4aa6b217de084f6567c46802e38982303a7b"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.15/pact-2.4.15-linux-arm64.tar.gz"
      sha256 "b19d612772c79d5ced8aedf76d1a365c67ff14ba0cf2e723856e14005ba0c613"
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
