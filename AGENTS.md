# Homebrew tap maintenance

Keep cask versions, release asset URLs, and SHA256 values consistent with the
published upstream assets. Never use a local build's checksum. Preserve the MIT
license and keep changes limited to packaging and installation.

OpenAway updates hourly through the **Update OpenAway cask** workflow. It downloads
the published stable arm64 ZIP and checksum, then verifies the checksum, bundle
version, signature, and exact architecture before updating the cask. Older
versions and unchanged files are skipped. Updates use a normal push, so concurrent
branch changes fail visibly rather than being overwritten.

To recover an update or sync immediately, manually run that workflow, optionally
with an existing OpenAway version tag. This does not rebuild or replace the release.
GitHub can disable scheduled workflows in public repositories after 60 days
without repository activity; re-enable the workflow and run it manually if needed.

After a NoCaps release is published, download its `NoCaps.zip`, verify its published
SHA256, and update `Casks/nocaps.rb` here. Keep the universal archive URL.

Run on macOS before publishing cask or updater changes:

```sh
ruby -c Casks/openaway.rb
ruby -c Casks/nocaps.rb
ruby scripts/test-cask.rb
ruby scripts/test-release.rb
```

The archive verification checks require Apple's Command Line Tools or Xcode.
Use `DEVELOPER_DIR=/Library/Developer/CommandLineTools` if full Xcode is unavailable.
