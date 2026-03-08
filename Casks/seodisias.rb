cask "seodisias" do
  version "0.1.5"

  if Hardware::CPU.arm?
    sha256 "3fb3e4d5c95658b291275af7cb2a2ab3341173335c4e55908d4f11b1d6596ae4"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "30708d60f0b86d939c7e2ecbb24823dfeb5ef66a3f945be95e2748185f729de3"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-amd64.dmg"
  end

  name "Seodisias"
  desc "SEO analysis desktop application"
  homepage "https://seodisias.com"
  app "Seodisias.app"

  zap trash: [
    "~/Library/Application Support/Seodisias",
    "~/Library/Preferences/com.aligundogdu.seodisias.plist",
    "~/Library/Caches/com.aligundogdu.seodisias",
  ]
end
