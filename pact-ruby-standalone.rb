class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.16"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.16/pact-2.4.16-osx-x86_64.tar.gz"
      sha256 "884456b24bb4fdfafa74f0d0ff8928474b614ffdc53a61de04e7fc34ae5c3701"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.16/pact-2.4.16-osx-arm64.tar.gz"
      sha256 "cf17c117418c1c20361cf0a58d79ee870ca584162dc8e8907b9ebe7a7bf784d3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.16/pact-2.4.16-linux-x86_64.tar.gz"
      sha256 "d5c2ba2fed81683809c76d026a8a41c1094c4f9aa844cc7e1c8587cc578aef49"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.16/pact-2.4.16-linux-arm64.tar.gz"
      sha256 "fde1690912aee3cf5ba325e65065b51b00b36d0609af4704490fb4976e59e861"
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
