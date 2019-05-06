class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.64.1/pact-1.64.1-osx.tar.gz"
  version "1.64.1"
  sha256 "b1b8892ebc647761080d3b9758aea50d5fc91714d3cfcbecb00dd8c19d047981"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]

    puts "###### pact-mock-service ##############"
    puts "#"
    puts "# Usage `pact-mock-service help [COMMAND]`"
    puts "#"
    puts "# For other tools related to PACT in this bundle"
    puts "# see https://github.com/pact-foundation/pact-ruby-standalone/releases/tag/v1.64.0"
    puts "#"
    puts "#######################################"
  end

  test do
    system "#{bin}/pact-mock-service", "help"
  end

end
