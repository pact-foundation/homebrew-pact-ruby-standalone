class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.23"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.23/pact-2.4.23-osx-x86_64.tar.gz"
      sha256 "9688b309b3288cece1e8cddbe31d5a6547a19bc0fd9dd2eb51756a0e18fbc5f8"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.23/pact-2.4.23-osx-arm64.tar.gz"
      sha256 "2c325feaa96e0cbe8a08a5e8edb38f4186c421bd47f81fab8aaf2b522402ac5b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.23/pact-2.4.23-linux-x86_64.tar.gz"
      sha256 "17abe33dc7840db049ec84f6e191612aa7ebd3b2f563fb05ddb71febdd253d7b"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.23/pact-2.4.23-linux-arm64.tar.gz"
      sha256 "72a012114ee32ae955aefb5f54b559f1f1e68bc2144bf91b663a875aa68280d4"
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
