class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.7"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.7/pact-2.0.7-osx-x86_64.tar.gz"
      sha256 "a765581d68d746b252a9801a9541310df9ae5507bd9dbf8a5d6cca0091cd4d69"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.7/pact-2.0.7-osx-arm64.tar.gz"
      sha256 "6e7d511a077c5b6b12bd136023182ad007cc7b837855af08b399ee7678986b46"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.7/pact-2.0.7-linux-x86_64.tar.gz"
      sha256 "22c9a17a823eae1f63e11d0407c6222a21760d4b5985ce2290ff1db660465c47"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.7/pact-2.0.7-linux-arm64.tar.gz"
      sha256 "371ace7ed5ac216bb8b0c39a3ea7ca2fcd9cf5607ccc77c4d532f1dccc11fe91"
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
