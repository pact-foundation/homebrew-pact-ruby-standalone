class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.72.2/pact-1.72.2-osx.tar.gz"
    version "1.72.2"
    sha256 "7a18613aec5729321bb8a401ff97780e7bc75467e7b4bfe50a48dac1583f13e0"

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
