class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.7"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.7/pact-2.4.7-osx-x86_64.tar.gz"
      sha256 "f39b07467812df7fd1c0aaa7a6092451a3ed20c8f8a92c80971113dd2ab29e89"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.7/pact-2.4.7-osx-arm64.tar.gz"
      sha256 "8383749ff3655e0b772ee495450abdecf02ab8a8fe84880a2ae5ff3acb4c2e62"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.7/pact-2.4.7-linux-x86_64.tar.gz"
      sha256 "51987030a0fb6261cd37d262adb26af7ede64a0954f6f76a805f390fb5890a28"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.7/pact-2.4.7-linux-arm64.tar.gz"
      sha256 "c2afa3c880c6446b28499e32d67952f1e792bc72c06e31b38798ffeeace5bea9"
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
