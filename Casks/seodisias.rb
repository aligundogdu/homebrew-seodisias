cask "seodisias" do
  version "0.1.1"

  if Hardware::CPU.arm?
    sha256 "fec6932dec66b152ac999632437682d3a287f4a4af0690a9e69751ef3b20f514"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "236602020f1d5e4ce099118c2ae16434a1d9769bd8404845d4972e8c932927d0"
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
