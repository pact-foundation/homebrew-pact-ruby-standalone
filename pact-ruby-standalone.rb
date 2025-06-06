class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.25"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.25/pact-2.4.25-osx-x86_64.tar.gz"
      sha256 "cfdd05290007b48fe0807bcc4038285af9ceeca3fe5b07571163f1a8acb8fa97"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.25/pact-2.4.25-osx-arm64.tar.gz"
      sha256 "38e4808a66774dcb5c01491da94c6f65e960d2087a9e3386697c245875eab870"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.25/pact-2.4.25-linux-x86_64.tar.gz"
      sha256 "8bd7ed84a8a9e99434750de0b328c575e1ef040c52d386953090d857ff7326f8"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.25/pact-2.4.25-linux-arm64.tar.gz"
      sha256 "05462a4ffe4f32baca2aeab29a88a50c4675dc218c2d729c6902f7e78d40fb08"
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
