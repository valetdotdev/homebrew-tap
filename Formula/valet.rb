class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3a14892167cf0302e03137f4e1e6ed7e218adb88105055a3f04c84df6ff043a6"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "2456a7982222be297b0a58fde00bc233ba6022e5283a9f644bf3cfefdb5a696d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "bed297dbaaaae2884e5847c595312102aaf31c367fe49cc3075acd491f510051"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "9bd4c5366f0de10d18d231fbf202651dc84ba0eea21b0e49728bb2c766fd1c93"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.29", shell_output("#{bin}/valet version")
  end
end
