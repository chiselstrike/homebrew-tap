# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.35.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.35.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "f7110047b4a74736f746a25167028adb1b8cdf4d306abc50d4036f108256fb5a"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.35.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "b5d248203c63ffc8ee235e00bbfdb1213c3b8dcbb3892e934e97baeec513b64f"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.35.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "816ad3d3a4cc70998cc55c875d7dcbcba10a1e6265542795e77324ac23c82e22"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.35.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "e20acfc3745341e3864ee9af0942708de8dfe8436cf13ae019e45f37e6b7202d"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end
end
