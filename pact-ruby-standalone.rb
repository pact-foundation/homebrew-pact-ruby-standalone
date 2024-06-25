class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.6"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.6/pact-2.4.6-osx-x86_64.tar.gz"
      sha256 "5cb2356d03768a2f3b72d77180c51a78f5045b98fea423690c4de4d1ab48c0bd"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.6/pact-2.4.6-osx-arm64.tar.gz"
      sha256 "d73f4cc9f6a1155ef8fc7edc49be01182cb676468ee94f73727215222ef5e4c0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.6/pact-2.4.6-linux-x86_64.tar.gz"
      sha256 "cf25215ed31e047ee8a90f091abb710e74c8c4fad5e20d79fb28a31b448cfcf4"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.6/pact-2.4.6-linux-arm64.tar.gz"
      sha256 "fc6a8099b6e20c471e27ae1076feeef846f039c51b6a6b482327cb4d0b9d7b61"
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
