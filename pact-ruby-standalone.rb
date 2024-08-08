class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.10"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.10/pact-2.4.10-osx-x86_64.tar.gz"
      sha256 "93dbf7425705760ea7b4de1b5b694fa89fcd21aee631110124ae0c08133fc7bf"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.10/pact-2.4.10-osx-arm64.tar.gz"
      sha256 "51a4e45fa407825940f4d093c6b1427c0560f8afc22c6c3764a990a76b64610e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.10/pact-2.4.10-linux-x86_64.tar.gz"
      sha256 "6a48f4c00049dbb5f246c04caac166aaeab20745f5a4c416112520105fb84c2d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.10/pact-2.4.10-linux-arm64.tar.gz"
      sha256 "2afff9f166f672c314ae9c5c02b05274832519fadb18ab2de84a13ea81d93b33"
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
