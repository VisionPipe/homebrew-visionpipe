cask "visionpipe" do
  version "0.5.0"
  sha256 "e6ead74c0011b0c6ca16cfbe02c5af0dd2cd7e72cef5abf42520364e8f1b8192"

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
