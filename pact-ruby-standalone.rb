class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.47/pact-1.88.47-osx.tar.gz"
    version "1.88.47"
    sha256 "65380a05b89c2dd384e1822c77e9e171a0ae0a58fdcabb83fa4055d24e8fe36a"

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
