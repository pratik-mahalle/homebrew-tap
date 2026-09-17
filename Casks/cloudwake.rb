cask "cloudwake" do
  version "0.3.2"
  sha256 "fbf260ea40c47b5120e26c6fb3f1930b2aa38f0ced867f4efa20c48a1d330e6b"

  url "https://github.com/pratik-mahalle/infralive/releases/download/v#{version}/Cloudwake-#{version}-macos-arm64.zip"
  name "Cloudwake"
  desc "AWS cost, resource activity, and savings monitor for your menu bar"
  homepage "https://github.com/pratik-mahalle/infralive"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cloudwake.app"

  caveats <<~EOS
    This early Cloudwake build is ad-hoc signed and is not Apple-notarized.
    macOS may require approval in System Settings > Privacy & Security.
    Cloudwake starts with demo data. Connect an existing AWS profile in Settings.
  EOS
end
