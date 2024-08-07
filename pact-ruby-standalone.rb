class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.8"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.8/pact-2.4.8-osx-x86_64.tar.gz"
      sha256 "c115b0fc72792406a1409c612813a02742b11f3bb5f195dc0433224f1ac1884c"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.8/pact-2.4.8-osx-arm64.tar.gz"
      sha256 "74369c0278c053a4971f02f88fbe585b98136f0665bd570ea984b2aaf63f289e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.8/pact-2.4.8-linux-x86_64.tar.gz"
      sha256 "dd93bec7ea1ba3cbdd070053caa00b0672b3fc9893ed52e8b6ef16df9f2e8fd1"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.8/pact-2.4.8-linux-arm64.tar.gz"
      sha256 "9261e8c2222342c602ac04435bd8412a22cce2e0ecb2bc50604dbd481973e093"
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
