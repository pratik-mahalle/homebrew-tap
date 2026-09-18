cask "cloudwake" do
  version "1.2.2"
  sha256 "96974ef30890e616984f78a7dcab82e90d0dabc210ea48327502585028af951c"

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
