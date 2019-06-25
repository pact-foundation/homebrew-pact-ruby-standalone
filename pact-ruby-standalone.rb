class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.69.0/pact-1.69.0-osx.tar.gz"
    version "1.69.0"
    sha256 "87b3aa5d3a2789b6c39f9bca58948033dfc4dc48438dd59bf9280c10f48b1da6"

    def install
        bin.install Dir["bin/*"]
        lib.install Dir["lib/*"]

        puts "# Usage: pact-mock-service help [COMMAND]"
        puts "#"
        puts "# For other tools related to PACT in this bundle see https://github.com/pact-foundation/pact-ruby-standalone/releases/"
        puts "#"
    end

    test do
        system "#{bin}/pact-mock-service", "help"
    end

end
