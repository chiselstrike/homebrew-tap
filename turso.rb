# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.90.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.90.4/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "b9b262937a70ec11aafa49871cced75027dd9afe97022c3de32de13328034b70"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.90.4/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "a2d0beb35f1ca27a21febe6d6c877161a35bd31f88ba25037d908e7fd655f377"

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
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.90.4/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "fc5b1b9db138fca195767d12408c361bc380bc30dc9976ff58e9e4bd4996edf2"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.90.4/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "d414bc855cc9b3c0b3e5bcd88cc172107a7804e205ebf39a682e4e7b0eddaa14"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end
