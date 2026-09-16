# Pratik Mahalle's Homebrew tap

## Cloudwake

AWS cost monitoring in your Mac menu bar. Apple silicon, macOS 13 or later.

```sh
brew tap pratik-mahalle/tap
brew install --cask pratik-mahalle/tap/cloudwake
```

Or [download the ZIP](https://github.com/pratik-mahalle/infralive/releases/latest).
Python and the AWS SDK are bundled; no source checkout is required. Configure an existing
AWS CLI profile to connect a real account. Cloudwake opens in demo mode first.

This early build is ad-hoc signed and not Apple-notarized. macOS may require approval in
System Settings → Privacy & Security. The cask does not disable Gatekeeper or remove quarantine.

[Source and setup](https://github.com/pratik-mahalle/infralive)
