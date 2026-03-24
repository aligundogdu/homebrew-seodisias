cask "seodisias" do
  version "0.1.7"

  if Hardware::CPU.arm?
    sha256 "8123c233db3bae3f10a471c1992d03c11370fe0dc22fba06246cb6b08676c6ee"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "1c261d6c5d127b89d8cd14be5eb887c7dfa19530dd697314969b6db67c27becc"
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
