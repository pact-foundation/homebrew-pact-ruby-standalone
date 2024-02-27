class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.2"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.2/pact-2.4.2-osx-x86_64.tar.gz"
      sha256 "69ca61166edb0a8a3329c28a100409be949aefd0a64d413450f6cd59b0db357d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.2/pact-2.4.2-osx-arm64.tar.gz"
      sha256 "cd52b00efc7b9c8fc5996fa8d292a16d51ff69b7172044f584dc4dc0f55ba0a1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.2/pact-2.4.2-linux-x86_64.tar.gz"
      sha256 "fb405fc853cb68740bcff6803345a06630c22fd9f41b1ca1e7d4bf4d8eed3be1"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.2/pact-2.4.2-linux-arm64.tar.gz"
      sha256 "fa4bb5d8856ea5fec5f6f33a6d499f08f4834b6a1ce2e441f265b90de93a5f7e"
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
