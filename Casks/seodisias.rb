cask "seodisias" do
  version "0.1.0"

  if Hardware::CPU.arm?
    sha256 "e4ddbdac5e9b53d1cc9ea5f7c1949f1b593aea5848a6b5a678d574dad178e47c"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "6d69894943d16035b980947e12cba454fc985874090f19aca55b1e0c71c28133"
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
