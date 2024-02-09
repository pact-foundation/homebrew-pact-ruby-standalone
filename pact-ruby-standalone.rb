class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.0"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.0/pact-2.4.0-osx-x86_64.tar.gz"
      sha256 "902ffd462f86eb14e3c867fdf3952dc0a0a8049513987b1d4d699c902f1f93da"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.0/pact-2.4.0-osx-arm64.tar.gz"
      sha256 "d2d064d83563feae066e314047df48068e2bddf88e0e2cc52bc187aaf5f903df"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.0/pact-2.4.0-linux-x86_64.tar.gz"
      sha256 "1580f5337b902c750e0f382dab582ca0594b85d131fe6343a59602d21879c182"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.0/pact-2.4.0-linux-arm64.tar.gz"
      sha256 "851973826a2d457fd41ce4285540a7cbf1a386c3e986f225456e617bce07eec2"
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
