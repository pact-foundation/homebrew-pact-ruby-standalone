class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.8"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.8/pact-2.0.8-osx-x86_64.tar.gz"
      sha256 "6bbebbeec8cf9353f12c7a84060044e69b15c786e7f2364afc2b8276d6cfd8ff"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.8/pact-2.0.8-osx-arm64.tar.gz"
      sha256 "7730a97857fb27cc5317e2bc4a5e78ac48d970df1027d252e112b5fbc7a3c13b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.8/pact-2.0.8-linux-x86_64.tar.gz"
      sha256 "0c7250a94325d8a7393756ab6bcdf99c0ee3a2d370e9ee47f9bdb7d293c5fa1d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.8/pact-2.0.8-linux-arm64.tar.gz"
      sha256 "27268240552a3c1133472e98045a5d1964c237a0571230e41ec8fe2161c93568"
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
