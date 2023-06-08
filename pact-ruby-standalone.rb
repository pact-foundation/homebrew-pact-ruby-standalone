class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.2"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.2/pact-2.0.2-osx-x86_64.tar.gz"
      sha256 "072766ea5fe6ce4228022c068b9b4889cd70537a913d6e253839cf7616fdb54b"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.2/pact-2.0.2-osx-arm64.tar.gz"
      sha256 "f0acdef27afa6c1837c37960568787b5c25d0f8e71fbd9ee232bf6aac6dfc0b2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.2/pact-2.0.2-linux-x86_64.tar.gz"
      sha256 "5c28a99b0309adb6ed8cb15bafb86c92fa4c49971b8019e4036f27b7e66e0588"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.2/pact-2.0.2-linux-arm64.tar.gz"
      sha256 "91f11de10077bfde1c37c6aaa69e9258288ab7f8ff4fb48f592ffce8665427c8"
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
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-plugin-cli", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end
