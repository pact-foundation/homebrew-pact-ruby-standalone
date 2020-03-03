class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.81.0/pact-1.81.0-osx.tar.gz"
    version "1.81.0"
    sha256 "e72be2e5e7372d075e032e39f55100ebeb88c8c64c92b039bdb1473c12693036"

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
