class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.4"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.4/pact-2.0.4-osx-x86_64.tar.gz"
      sha256 "9c5cb5aec2e375c7ef2771d8125fb3fcb1b84a05268292c9f1f7c837b3839af8"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.4/pact-2.0.4-osx-arm64.tar.gz"
      sha256 "be2cba89aa86edbf6821b56b521c10640e98e90ce640bd32c5395b0b14da3a1e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.4/pact-2.0.4-linux-x86_64.tar.gz"
      sha256 "93e14d81739548843c0655363f8d052ec402f8c72ac212f0d05161389dc651bf"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.4/pact-2.0.4-linux-arm64.tar.gz"
      sha256 "2d5f469569a95520f6ffbd2d609e181011eaa3aed8e91b1d38530799086e2a93"
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
