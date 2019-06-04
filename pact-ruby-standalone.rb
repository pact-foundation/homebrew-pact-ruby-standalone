class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.66.0/pact-1.66.0-osx.tar.gz"
  version "1.66.0"
  sha256 "ee5074399021d5d57d589b8856a89da82c67e53c454cff2f8844e12495d12eea"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "# Usage `pact-mock-service help [COMMAND]`"
    puts "#"
    puts "# For other tools related to PACT in this bundle see https://github.com/pact-foundation/pact-ruby-standalone/releases/"
    puts "#"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end

end
