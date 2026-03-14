class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "2e85a071996ec83d1140e25e6e5dbcf8d2822ae64d493a5bb001e15485f69721"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "87460512a440e1fbea6fe500380a4be552f6ba4b54855f7bb262c433b15918f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "15c9f51eb1f8eff85b191c3eac5aaf84e7d5907d5d7a5bb09f4732b2bbac1310"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "8e566505e1615f77aa4a0c5d1fa674228604b78ac063e2b8067c0bf8ce812fdb"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.22", shell_output("#{bin}/valet version")
  end
end
