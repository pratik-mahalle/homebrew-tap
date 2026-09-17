cask "cloudwake" do
  version "0.3.3"
  sha256 "61630177a5e27a31fd4b7e1f974c9020acdeefcd218d34663c40b169beabd1a3"

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
