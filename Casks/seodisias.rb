cask "seodisias" do
  version "0.1.4"

  if Hardware::CPU.arm?
    sha256 "742af7fffc68fca4f607bb8df1b1b63067aed91a2e4775881c04b3dcb179c903"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "bf39b807cf26f7ce9d1334f9a3777862fe276845ab408d1ecfe4221e7d29d903"
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
