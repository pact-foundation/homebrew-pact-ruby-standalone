class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.1.0"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.1.0/pact-2.1.0-osx-x86_64.tar.gz"
      sha256 "e38795b5c121acfb3748166bd63106501400501a4910ce7ebcaa898bca8f09fe"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.1.0/pact-2.1.0-osx-arm64.tar.gz"
      sha256 "219e0c74413aec27057a0265956f6e0ce9d1be6a1571b774469dcbfffb80d18f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.1.0/pact-2.1.0-linux-x86_64.tar.gz"
      sha256 "e3a5c640301e98dfbe000ee91a5eddffd29deee1131fe64a4babe050b393c1b7"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.1.0/pact-2.1.0-linux-arm64.tar.gz"
      sha256 "4db3658b4b501c58232fd848aa23f5094ac589bea74408d7c81a1ace73b3fa0e"
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
