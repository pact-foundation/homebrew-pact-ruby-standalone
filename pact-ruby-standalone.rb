class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.3"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.3/pact-2.4.3-osx-x86_64.tar.gz"
      sha256 "02f3bfcbf49e12f8464fc1ccb1c7c027d4a3db61b59d6ff05c587de4aeadcd6a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.3/pact-2.4.3-osx-arm64.tar.gz"
      sha256 "3d33330dff06eb4811e1bcdd7abcbe5fc1f1ff1e1a79094f4ad0aaf866046485"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.3/pact-2.4.3-linux-x86_64.tar.gz"
      sha256 "9c8c8a495f848e86accc5d547ccf03186f2bf70a2bcd97ac0be1bf79bdcba99e"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.3/pact-2.4.3-linux-arm64.tar.gz"
      sha256 "39f422022808b93f1b2a0f0f68b22c7b1eb32cb8d6ced56ec325a9e8f1b2dcae"
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
