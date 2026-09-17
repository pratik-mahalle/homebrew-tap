cask "cloudwake" do
  version "1.1.1"
  sha256 "bf56bf7101070689969672573eed123673349631d95efa2baf46ae21a4fa3993"

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
    Cloudwake opens AWS account setup on first launch. Choose a profile or paste credentials. SSO is optional.
  EOS
end
