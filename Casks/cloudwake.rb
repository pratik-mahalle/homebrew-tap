cask "cloudwake" do
  version "0.3.0"
  sha256 "16eac236d068cc61777d5c744769aab2f2c71082d4ddc0ad9762c086ccc48ffd"

  url "https://github.com/pratik-mahalle/infralive/releases/download/v#{version}/Cloudwake-#{version}-macos-arm64.zip"
  name "Cloudwake"
  desc "AWS cost, resource activity, and savings monitor for your menu bar"
  homepage "https://pratikmahalle.com/cloudwake"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cloudwake.app"

  caveats <<~EOS
    This early Cloudwake build is ad-hoc signed and is not Apple-notarized.
    macOS may require approval in System Settings > Privacy & Security.
    Cloudwake starts with demo data. Connect an existing AWS profile in Settings.
  EOS
end
