class PactRubyStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone"
  version "2.4.22"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.22/pact-2.4.22-osx-x86_64.tar.gz"
      sha256 "b1a8049c176cc19755b0cd4831da2cab6b4f4849aad6389c3dbe1170e8128c24"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.22/pact-2.4.22-osx-arm64.tar.gz"
      sha256 "4b8b047a41d387d0a9167b0c43b6a29e432838f00f0f20b0c8951ae444fab2d1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.22/pact-2.4.22-linux-x86_64.tar.gz"
      sha256 "4b45168e276c71a7d800b1ded6984f4c14f95718d2e7dc8e0743802c2b265cad"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v2.4.22/pact-2.4.22-linux-arm64.tar.gz"
      sha256 "3443e17482334e73f9e97caf2f25a866d03f0996726d63ab121a19e7ce471e5e"
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
