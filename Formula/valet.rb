class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "d3a2d4c87bc7f188ce649257370cf35eb3f8d8b66a110d0311007b9217ff487a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "b1a6d6fd93886a1b0a4891069b74949615916fa9f9edadaefb83a8356fd57b5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "1b54fc9102aa090dacc7d9758884955819b070c1335ea1612063ded1d806e488"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "ef98058def2378a011e0bf60d069fca6502d71c54d999fdb626c328ac1eaef9a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.48", shell_output("#{bin}/valet version")
  end
end
