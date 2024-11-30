class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.19"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.19/pact-2.4.19-osx-x86_64.tar.gz"
      sha256 "d0a50b3e9f58e2daee950c6edf518040d206a440cd817a90062f9bc2377d96cc"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.19/pact-2.4.19-osx-arm64.tar.gz"
      sha256 "a2ca4be05bce9b28b3d77b99d7268aa4454e1ea20597c14bccd76af392005abf"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.19/pact-2.4.19-linux-x86_64.tar.gz"
      sha256 "915d75e41284c3b7cf9a10c113e58561b07c8c58182bc8a58eb14bbd2379dc3a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.19/pact-2.4.19-linux-arm64.tar.gz"
      sha256 "2a736b4e73637f3a1ad0eab179452f6e07155ae0600bf4c786611415d6a2b26b"
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
