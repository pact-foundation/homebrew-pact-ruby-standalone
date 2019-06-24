#!/bin/sh
set -e

homepage="https://github.com/pact-foundation/pact-ruby-standalone"
version=$1
FORMULAE_FILE="pact-ruby-standalone.rb"

write_homebrew_formulae() {    
    if [ ! -f "$FORMULAE_FILE" ] ; then
        touch "$FORMULAE_FILE"
    else
        : > "$FORMULAE_FILE"
    fi

     exec 3<> $FORMULAE_FILE
        echo "class PactRubyStandalone < Formula" >&3
        echo "    desc \"A standalone pact command line executable using the ruby pact implementation and Travelling Ruby\"" >&3
        echo "    homepage \"$homepage\"" >&3
        echo "    url \"$homepage/releases/download/$version/pact-$version-osx.tar.gz\"" >&3
        echo "    version \"$version\"" >&3
        echo "    sha256 \"${shasignature[1]}\"" >&3
        echo "" >&3
        echo "    def install" >&3
        echo "        bin.install Dir[\"bin/*\"]" >&3
        echo "        lib.install Dir[\"lib/*\"]" >&3
        echo "" >&3
        echo "        puts \"# Usage: pact-mock-service help [COMMAND]\"" >&3
        echo "        puts \"#\"" >&3
        echo "        puts \"# For other tools related to PACT in this bundle see $homepage/releases/\"" >&3
        echo "        puts \"#\"" >&3
        echo "    end" >&3
        echo "" >&3
        echo "    test do" >&3
        echo "        system \"#{bin}/pact-mock-service\", \"help\"" >&3
        echo "    end" >&3
        echo "" >&3
        echo "end" >&3
    exec 3>&-
}

display_help() {
    echo "This script must be run from the root folder."
}

display_usage() { 
    echo "\nUsage:\n\"./scripts/update_tap_version.sh 1.64.1\"\n" 
} 

if [[ $# -eq 0 ]] ; then
    echo "ERROR: Need to provide an argument for the pact-ruby-standalone version as x.yy.z"
    display_usage
    exit 1
elif [[ $1 == "--help" ||  $1 == "-h" ]] ; then
    display_help
    display_usage
    exit 1
else
    echo "Downloading pact-$version-osx.tar.gz from $homepage"
    curl -LO $homepage/releases/download/v$version/pact-$version-osx.tar.gz
    
    shasignature=( $(eval "openssl dgst -sha256 pact-$version-osx.tar.gz") )
    echo "Signature: ${shasignature[1]}"
    echo "Cleaning up..."
    rm pact-$1-osx.tar.gz
    echo "Writing formulae..."

    write_homebrew_formulae

    echo "Sorting out the homebrew tap... "
    git checkout -b version/v$version
    git add $FORMULAE_FILE
    git commit -m "Release of version v$version"
    git push -u origin version/v$version

    echo "Go and open that PR now..."

    echo "Done!"

    exit 0
fi
