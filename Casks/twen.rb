cask "twen" do
  version "0.2.0"
  sha256 "fbfa4bec1228c94db96a9e46aaebfce59c5b123cfc4e9e0dfd0c0a2679b23049"

  url "https://github.com/kannwism/twen/releases/download/v#{version}/twen-#{version}.zip"
  name "twen"
  desc "Menu bar timer for the 20-20-20 rule that gently desaturates the screen"
  homepage "https://github.com/kannwism/twen"

  depends_on macos: :ventura

  app "twen.app"

  zap trash: [
    "~/Library/Preferences/dev.twen.plist",
  ]

  caveats <<~EOS
    twen is not yet notarized. If macOS blocks the first launch, allow it in
    System Settings > Privacy & Security, or reinstall without quarantine:
      brew reinstall --cask --no-quarantine twen
  EOS
end
