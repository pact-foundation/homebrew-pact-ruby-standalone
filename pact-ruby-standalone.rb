class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.3.1"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.3.1/pact-2.3.1-osx-x86_64.tar.gz"
      sha256 "91c46397a7f60726898d9cb516947f938e9626d6eb8f53ae018ae0d260ea4df1"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.3.1/pact-2.3.1-osx-arm64.tar.gz"
      sha256 "693ddf49a7c2a59aba18c15f5f49b2553361bb8f45d4e0ec49fbddfd05b7231d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.3.1/pact-2.3.1-linux-x86_64.tar.gz"
      sha256 "9c3f5f820b32c85d1ab8d78dc983a33ac9fbc6b4d8682079aa1751ed174adef4"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.3.1/pact-2.3.1-linux-arm64.tar.gz"
      sha256 "b0a7ea708d66bdb8bb85ab0dbbed1ae8646ca93646cc4f0287ced6b3eab4be81"
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
