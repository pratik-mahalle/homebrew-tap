cask "cloudwake" do
  version "1.1.1"
  sha256 "0719a45a9ef27ab47d79bddc73c949308ad8a9bb68a83caf53dd7a3538f3c94e"

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
