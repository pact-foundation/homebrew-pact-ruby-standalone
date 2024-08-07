class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.9"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.9/pact-2.4.9-osx-x86_64.tar.gz"
      sha256 "3b15e86aaae2e682b1008fa895d270c12c0aa97f236c74a140bd7874f8a4a361"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.9/pact-2.4.9-osx-arm64.tar.gz"
      sha256 "fafd275e6b127b277090cf0a9a805517883f97a0a2323b2a3f3fddf4db80800e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.9/pact-2.4.9-linux-x86_64.tar.gz"
      sha256 "4c0eb22e8b523498a36104c68ae2680586e8ad07de4404c75048cf549eaa8a2a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.9/pact-2.4.9-linux-arm64.tar.gz"
      sha256 "c056878db3a300a0339e13f2d9da30fb9770afe499ece3c804bb5461f1774da6"
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
