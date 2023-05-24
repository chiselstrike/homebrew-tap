# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.62.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.62.2/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "4a4addd9a194854fdd288240802f04494a3aed07f1dc0f127247177d8d6e2460"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.62.2/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "aa9923b54dd5bbd91d7b2f22910f300d64e12b5583bc63ad3fddd2766b86e181"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.62.2/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "5a643d60287c0a9853e268f0eef5f98b2143e17cddfbdd731fb3c879c2936ec1"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.62.2/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "b248b6a05bcd2f3d2c047dd668789c504b1af542ce6b4161338c631238f27800"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso quickstart')
  end
end
