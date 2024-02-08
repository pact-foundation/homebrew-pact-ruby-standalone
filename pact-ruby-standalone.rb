class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.2.0"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.2.0/pact-2.2.0-osx-x86_64.tar.gz"
      sha256 "32198f136ab0329d87e58c2af63aad0f9579a520691b9e70dfe230a73ab82299"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.2.0/pact-2.2.0-osx-arm64.tar.gz"
      sha256 "f5f9c35842009fd0876ce8ff14b3a934e14ac50e82ab2e1adad3f1bca3460c95"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.2.0/pact-2.2.0-linux-x86_64.tar.gz"
      sha256 "56b4895c3f303bdee53296304ebf12de4f20d1cddef348179a90dcde16f7c76e"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.2.0/pact-2.2.0-linux-arm64.tar.gz"
      sha256 "e68dd045d27ca08e30453c84d7140ed91772ef51402a6d16854452accc2aa74f"
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
