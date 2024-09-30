class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.14"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.14/pact-2.4.14-osx-x86_64.tar.gz"
      sha256 "2551b94d3aa1b336783b96195977b5a25eb59be8c5e3a70fdf3cb988e8947456"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.14/pact-2.4.14-osx-arm64.tar.gz"
      sha256 "0b0ece7bb3bcaf10b8f4ed84d8df84238d93304893de6535d7077f9278dca0bf"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.14/pact-2.4.14-linux-x86_64.tar.gz"
      sha256 "9a786749ca07478f987c800c0ae2a34e94795f3438c025d8b0f132fdc3940901"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.14/pact-2.4.14-linux-arm64.tar.gz"
      sha256 "862962ddf43b65a543c22d371015691ef024da15b1a94d8c7f721550848699c5"
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
