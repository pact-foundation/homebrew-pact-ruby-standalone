class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.10"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.10/pact-2.0.10-osx-x86_64.tar.gz"
      sha256 "cd2498944ae9115b5ee35d7ad3ee6b28698e59e375c65e51eb75cd8b4c9f2fe9"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.10/pact-2.0.10-osx-arm64.tar.gz"
      sha256 "66ea1694056b06b58d9ac3932f38c697faf85846983ce7a11318b2ad6bd7ccf1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.10/pact-2.0.10-linux-x86_64.tar.gz"
      sha256 "08ec666da96f71336ad6fd3f417458787eee2b87e3358ec9f2fcb3ba2fc48da5"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.10/pact-2.0.10-linux-arm64.tar.gz"
      sha256 "e57a3a98d196ad7b24457fe47906997169cf3336aff20384794e3d83c49dcf90"
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
