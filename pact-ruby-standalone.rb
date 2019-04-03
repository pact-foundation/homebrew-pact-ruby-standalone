class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.64.0/pact-1.64.0-osx.tar.gz"
  version "1.64.0"
  sha256 "1074ab2693c4a2f45ce48a0d9e32f1510dadf8a997ae4c74eb98c808eab6bc65"

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
