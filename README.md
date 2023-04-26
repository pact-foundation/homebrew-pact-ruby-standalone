# homebrew-pact-ruby-standalone

The Pact Ruby Standalone public homebrew tap for OS X homebrew formulae.

The easier way to install [`mock-pact-service`](https://github.com/pact-foundation/pact-ruby-standalone) bundle of tools on your macOS using Homebrew.


## Installation

    brew tap pact-foundation/pact-ruby-standalone
    brew install pact-ruby-standalone

##  Supported Platforms

| OS           | Architecture | Supported |
| ------- | ------------ | --------- |
| OSX        | x86_64       | ✅         |
| OSX        | aarch64 (arm)| ✅       |
| Linux    | x86_64       | ✅         |


### Notes

OSX ARM (M1/M2) Machines will require Rosetta tools, as the Ruby binaries as currently built for x86_64.

If you don't already have it installed, you can use the following command

```sh
sudo softwareupdate --install-rosetta --agree-to-license
```