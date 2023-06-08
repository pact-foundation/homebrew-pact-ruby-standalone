# homebrew-pact-ruby-standalone

The Pact Ruby Standalone public homebrew tap for OS X homebrew formulae.

The easier way to install [`pact-ruby-standalone`](https://github.com/pact-foundation/pact-ruby-standalone) bundle of tools on your macOS using Homebrew.

## Installation

    brew tap pact-foundation/pact-ruby-standalone
    brew install pact-ruby-standalone

##  Supported Platforms

| OS           | Architecture | Supported |
| ------- | ------------ | --------- |
| OSX        | x86_64       | ✅         |
| OSX        | arm64 | ✅       |
| Linux    | x86_64       | ✅         |
| Linux    | arm64       | ✅         |


## Included tools

```
  pact --help
  pact-broker --help
  pact-broker --help
  pact-message --help
  pact-mock-service --help
  pact-plugin-cli --help
  pact-provider-verifier --help
  pact-stub-service --help
  pactflow --help
```

### Previous versions

The latest version, of the previous major release is provided, in case of issues with the latest version installed by default.

    brew install pact-ruby-standalone@1

#### Notes

For v1.x and below - 

OSX ARM (M1/M2) Machines will require Rosetta tools, as the Ruby binaries as currently built for x86_64.

If you don't already have it installed, you can use the following command

```sh
sudo softwareupdate --install-rosetta --agree-to-license
```