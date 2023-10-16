class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.0.9"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.9/pact-2.0.9-osx-x86_64.tar.gz"
      sha256 "41ce9ca587bd3dbedcda2e1780bd9e29656cb4a430789aae5e7e841bd3ebc59a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.9/pact-2.0.9-osx-arm64.tar.gz"
      sha256 "eea292bc1c66a003d7762163b7def9f67e73c5ad72ed65d47e72136747e291f9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.9/pact-2.0.9-linux-x86_64.tar.gz"
      sha256 "d2b7b3a54bfb739a3653cb4915040afc0de8b2caad8180a92ffbbd341c55631e"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.0.9/pact-2.0.9-linux-arm64.tar.gz"
      sha256 "66438888bc99dbb09a22d2c439ca4561bdd7bd043bb539d454b5fd0cbfeb69ba"
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
