class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.26"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.26/pact-2.4.26-osx-x86_64.tar.gz"
      sha256 "23ad3dd8a1b2a08088220e6ebdb1bceaa01ff65826f50369b775141b9dd05876"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.26/pact-2.4.26-osx-arm64.tar.gz"
      sha256 "3300bf3b8767b7a8b56d71f99050b0d243c686d589a7b29691d070964ce20355"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.26/pact-2.4.26-linux-x86_64.tar.gz"
      sha256 "b738840b18a9e1163bac311f8a2b506d9d9b07ac65fade22400dbf72fc578c61"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.26/pact-2.4.26-linux-arm64.tar.gz"
      sha256 "aedd703743a2144ff4ce38f0267ac957f43ac4b1da5c93881ba0cecf3868b36e"
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
