class PactRubyStandalone < Formula
    desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
    homepage "https://github.com/pact-foundation/pact-ruby-standalone"
    url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.88.76/pact-1.88.76-osx.tar.gz"
    version "1.88.76"
    sha256 "a47fe8e341a6c5c7105fdbf24239b154e1f0f44402521ffd5810560c113bd802"

    def install
        bin.install Dir["bin/*"]
        lib.install Dir["lib/*"]

        puts "# Run "pact-mock-service help [COMMAND]" (for more see https://github.com/pact-foundation/pact-ruby-standalone/releases/)
    end

    test do
        system "#{bin}/pact-mock-service", "help"
    end

end
