class PactRubyStandaloneAT1 < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "1.92.0"

  on_macos do
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.92.0/pact-1.92.0-osx.tar.gz"
      sha256 "dee18427b9eced63a159d5e64c5ff0d7aa2d4a1e67255b24b239c007c2c8b6c1"
    end
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.92.0/pact-1.92.0-osx.tar.gz"
      sha256 "dee18427b9eced63a159d5e64c5ff0d7aa2d4a1e67255b24b239c007c2c8b6c1"
    end
  end

  on_linux do
      on_intel do
        url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.92.0/pact-1.92.0-linux-x86_64.tar.gz"
        sha256 "a5922e4098cae6f8717b9d51fda050d30540dff657c44f61eed9d51875f7822a"
      end
  end

  def install
    # pact-ruby-standalone
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    puts "# (see https://github.com/pact-foundation/pact-ruby-standalone/releases/)'"
    puts "# Run 'pact --help'"
    puts "# Run 'pact-broker --help'"
    puts "# Run 'pact-message --help'"
    puts "# Run 'pact-mock-service --help'"
    puts "# Run 'plugin-cli --help'"
    puts "# Run 'pact-provider-verifier --help'"
    puts "# Run 'pact-stub-service --help'"
    puts "# Run 'pactflow --help'"
    on_macos do
      on_arm do
        puts "# Rosetta is required to run pact-ruby-standalone commands"
        puts "# sudo softwareupdate --install-rosetta --agree-to-license"
      end
    end
  end

  test do
    system "#{bin}/pact", "help"
    system "#{bin}/pact-broker", "help"
    system "#{bin}/pact-message", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end