cask "twen" do
  version "0.1.0"
  sha256 "1df5874b4134f513285eea90ff310056f876219d778ed58433a31ddc55e5e9b1"

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
