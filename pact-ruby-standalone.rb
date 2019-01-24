class PactRubyStandalone < Formula
  desc "A standalone pact command line executable using the ruby pact implementation and Travelling Ruby"
  homepage ""
  url "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.63.0/pact-1.63.0-osx.tar.gz"
  sha256 "6bd3cf5194267c9d9e00f5833b691dbf0fccac7465b46d979560cb352f83bd02"

  def install
    bin.install "pact-ruby-standalone"
  end

end
