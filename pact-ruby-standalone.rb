class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.5"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.5/pact-2.0.5-osx-x86_64.tar.gz"
      sha256 "a4dc08445e5bcd206aca84396e51f27749cc367abbd4f8541bbba6cb272f259d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.5/pact-2.0.5-osx-arm64.tar.gz"
      sha256 "cf6aff7e61fc94c8fe6a8808b0a88d54491acf38302e324630d5c1144c3895ad"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.5/pact-2.0.5-linux-x86_64.tar.gz"
      sha256 "41b913c51592fb476d9975955345dcf11d1e009f955ee0aab3cfe0d9b89782c7"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.5/pact-2.0.5-linux-arm64.tar.gz"
      sha256 "99a9d1dcf36a98f451cdc482994444eee6bcb46b26ca94c9f921d443cc5d72b5"
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
