class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.24"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.24/pact-2.4.24-osx-x86_64.tar.gz"
      sha256 "3a043db970458b20da3e1107a36334e153cfc0ab0b8fc8dc4c1879d10049a25e"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.24/pact-2.4.24-osx-arm64.tar.gz"
      sha256 "c149e7cda0ce4356cb1023a652af6e588690086f615d38260e20973e902d8e55"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.24/pact-2.4.24-linux-x86_64.tar.gz"
      sha256 "c8735f11936d1ccf16c9dcddfba484dc3b8bc75bee597f736ecda5345138eed4"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.24/pact-2.4.24-linux-arm64.tar.gz"
      sha256 "e2b30961fd46733101244bfe16b47be1c3ae7456728e12fdfb664cd7bd851b45"
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
