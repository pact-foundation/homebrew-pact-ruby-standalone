class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.3"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.3/pact-2.0.3-osx-x86_64.tar.gz"
      sha256 "0bdeeac734f435a4c0a5293780695a55d105b05e1994de10f3f53cbe312487dc"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.3/pact-2.0.3-osx-arm64.tar.gz"
      sha256 "5b83d5b89a6c9740c71988c653aeaf8adfbcdbbc6ad2c6a58e1476bb1c8e54e1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.3/pact-2.0.3-linux-x86_64.tar.gz"
      sha256 "924213e6ff178c7a74771cf5454eb4ea8580fb27eebb748eb08ca159ca918738"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.3/pact-2.0.3-linux-arm64.tar.gz"
      sha256 "247f6f503ec97062e7e2a092128a10a71ffb927fb9983d6314524999f06f9843"
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
