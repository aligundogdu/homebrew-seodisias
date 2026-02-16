cask "seodisias" do
  version "0.1.2"

  if Hardware::CPU.arm?
    sha256 "063ad720da7eeca52b6676de6c7dba5701675e3b91897506ada3a68f46dc5218"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "e063444b79eb55721d0968879b30253b3535642356c0842901316866be7508c1"
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
