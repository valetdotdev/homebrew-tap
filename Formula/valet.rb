class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ac5c22a7cc3a70e823c3d6ed3ce2470512e4f439e30fd673215712127d1f7b90"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "0cc8fc7c58fb7753c407def5dea45022e847ce69acbb9f29da907ff24954d465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "47ce71ccc1dd762ad6d509322dc06fae3b1088a23daf4e54091c7d6766af45ab"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f9781a44ae3947dc7419e7ea2a08f2d15ca8cc452f2b4e5091accef91d974076"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.35", shell_output("#{bin}/valet version")
  end
end
