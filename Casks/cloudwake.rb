cask "cloudwake" do
  version "1.0.0"
  sha256 "06437a745f73816680254214bb952869dfa554698592722303d492a429d3e9af"

  url "https://github.com/pratik-mahalle/infralive/releases/download/v#{version}/Cloudwake-#{version}-macos-arm64.zip"
  name "Cloudwake"
  desc "AWS cost, resource activity, and savings monitor for your menu bar"
  homepage "https://github.com/pratik-mahalle/infralive"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cloudwake.app"

  caveats <<~EOS
    This Cloudwake build is ad-hoc signed and is not Apple-notarized.
    macOS may require approval in System Settings > Privacy & Security.
    Cloudwake starts with demo data. Choose an AWS profile or paste credentials in Settings. SSO is optional.
  EOS
end
