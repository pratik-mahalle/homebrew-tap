cask "cloudwake" do
  version "1.2.0"
  sha256 "05a4c0c961bfc4b49877fe1533bdd1a4f50287876942392043822a831abe0d53"

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
