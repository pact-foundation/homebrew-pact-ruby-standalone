class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.21"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.21/pact-2.4.21-osx-x86_64.tar.gz"
      sha256 "1439de55caa361e42fa75ea472d6bdf12d51f4d8a8e2367d3ea9aa2b4f177c67"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.21/pact-2.4.21-osx-arm64.tar.gz"
      sha256 "7279ff0a18a18ecf652e79100087ea179d36cba291cf33a0ee428872136b72de"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.21/pact-2.4.21-linux-x86_64.tar.gz"
      sha256 "230ca696a6f6433e7d6a86dfa2038cadf0f13619317912cd21034c40a29ed086"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.21/pact-2.4.21-linux-arm64.tar.gz"
      sha256 "4b6da8c2fe8b28df2fbbdee063c2e24e37e163b2281f7fa3cf0863ca2eb76afe"
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
