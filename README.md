# Homebrew tap

Homebrew casks for [OpenAway](https://github.com/phucisstupid/openaway) and
[NoCaps](https://github.com/phucisstupid/nocaps), for macOS 13 or later.

```sh
brew install --cask phucisstupid/tap/openaway
brew install --cask phucisstupid/tap/nocaps
```

OpenAway installs the Apple Silicon build. NoCaps supports Apple Silicon and Intel.
Homebrew adds this tap automatically when installing either cask.

The app repositories include migration entries for existing installations.
Run `brew update`; if Homebrew requests trust for the new cask, use its
fully qualified install command above.

See [AGENTS.md](AGENTS.md) for cask maintenance and verification.
