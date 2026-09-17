cask "cloudwake" do
  version "1.2.1"
  sha256 "5902d6423087b8c15956d2573c68bdee2c066c045b1ebcfa17b9fc3504bdec70"

  url "https://github.com/pratik-mahalle/cloudwake-releases/releases/download/v#{version}/Cloudwake-#{version}-macos-arm64.zip"
  name "Cloudwake"
  desc "AWS cost, resource activity, and savings monitor for your menu bar"
  homepage "https://pratikmahalle.com/cloudwake"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cloudwake.app"

  caveats <<~EOS
    This Cloudwake build is ad-hoc signed and is not Apple-notarized.
    macOS may require approval in System Settings > Privacy & Security.
    Cloudwake opens AWS account setup on first launch. Choose a profile or paste credentials. SSO is optional.
  EOS
end
