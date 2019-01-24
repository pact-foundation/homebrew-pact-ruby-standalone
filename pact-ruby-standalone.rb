class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage "https://github.com/pact-foundation/pact-ruby-standalone/"
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.63.0/pact-1.63.0-osx.tar.gz"
  sha256 "6bd3cf5194267c9d9e00f5833b691dbf0fccac7465b46d979560cb352f83bd02"

  def install
    bin.install "bin/pact"
    bin.install "bin/pact-broker"
    bin.install "bin/pact-message"
    bin.install "bin/pact-mock-service"
    bin.install "bin/pact-provider-verifier"
    bin.install "bin/pact-publish"
    bin.install "bin/pact-stub-service"

    puts "###### pact-mock-service ##############"
    puts "# Usage `pact-mock-service help [COMMAND]`"
    puts "#"
    puts "# For other tools related to PACT see https://github.com/pact-foundation/pact-ruby-standalone/releases/tag/v1.63.0"
    puts "#######################################"
  end

end
