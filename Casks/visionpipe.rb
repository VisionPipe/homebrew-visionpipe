cask "visionpipe" do
  version "0.3.6"
  sha256 "8297cf50ed4b073515d00ad07861b092b6df4af5e5b6ecd843b46cddaf00548c"

  url "https://github.com/VisionPipe/visionpipe/releases/download/v#{version}/VisionPipe_#{version}_aarch64.dmg"
  name "VisionPipe"
  desc "Screenshot to AI in one keystroke"
  homepage "https://github.com/VisionPipe/visionpipe"

  depends_on macos: ">= :ventura"

  app "VisionPipe.app"

  zap trash: [
    "~/Library/Application Support/com.visionpipe.desktop",
    "~/Library/Caches/com.visionpipe.desktop",
    "~/Library/Preferences/com.visionpipe.desktop.plist",
  ]
end
