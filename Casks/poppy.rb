cask "poppy" do
  version "0.1.2"
  sha256 "5b37244f8bf93b5cc172e6de2178fca02014dbe2ebe06d25c856fc89f8d212e9"

  url "https://github.com/dquigles/poppy/releases/download/v#{version}/Poppy-#{version}.dmg"
  name "Poppy"
  desc "Floating Liquid Glass terminal for coding agents"
  homepage "https://github.com/dquigles/poppy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Poppy.app"

  zap trash: [
    "~/.config/poppy",
    "~/.local/bin/poppy",
    "~/Library/Caches/io.github.dquigles.poppy",
    "~/Library/HTTPStorages/io.github.dquigles.poppy",
    "~/Library/Preferences/io.github.dquigles.poppy.plist",
    "~/Library/Saved Application State/io.github.dquigles.poppy.savedState",
  ]
end
