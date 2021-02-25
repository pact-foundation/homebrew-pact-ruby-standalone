class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.38/pact-1.88.38-osx.tar.gz"
    version "1.88.38"
    sha256 "6ccb76731e4f8dc582ebd1de83fba9773336c4fe7d262fd2f14e6133edc0a85e"

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
