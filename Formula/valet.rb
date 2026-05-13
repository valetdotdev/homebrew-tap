class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.49"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "a202a9f526b90998bcb0c0fb20623c769823e13e5e2af530b255e5b01fc927f9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "fc3dba012778189dc8fdc28e8d12ad50e4f419344c3b3373a824de4bd77b1b7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "952a9b112367464c2affc586cf243b4a027a48e986fd9ce421644ef517ff4405"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f127b4c92f80502776c0445f1c6452de9695a5cd854a685aa03222e32b2be4bc"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.49", shell_output("#{bin}/valet version")
  end
end
