class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.6"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.6/pact-2.0.6-osx-x86_64.tar.gz"
      sha256 "6d146a7425561e5439c3ca9f2b1654de8d360dca26b949ca52777abd12cdf5ec"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.6/pact-2.0.6-osx-arm64.tar.gz"
      sha256 "3ab9db8d4196d0c0da2be65cd1f3daf460de4cc04fe8cca30d9021e0599bd83b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.6/pact-2.0.6-linux-x86_64.tar.gz"
      sha256 "43f39f84afec663bb036efa60fb777d13967c61c2e2b3099daa0c4d5b805eafa"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.6/pact-2.0.6-linux-arm64.tar.gz"
      sha256 "5dfd9bedc1866d32457b503973775ac6071924f44088c3712b852027a79a7e0b"
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
