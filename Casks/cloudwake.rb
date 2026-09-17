cask "cloudwake" do
  version "1.0.1"
  sha256 "a333866b713ec59e77cbae81473d3daf887bb22315659c3245bfc1afcc62a443"

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
