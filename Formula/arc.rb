# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arc < Formula
  desc "A helpful CircleCI and GitHub tool."
  homepage "https://github.com/hubci/arc"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.11.0/arc-v0.11.0-macos-amd64.tar.gz"
      sha256 "0c62e2c22babc5269853b50d8c6b8fa98ba5f7f7b0f8f79e32cd56cc107f6d88"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hubci/arc/releases/download/v0.11.0/arc-v0.11.0-macos-arm64.tar.gz"
      sha256 "2885d28e05c396542e47d900bec98c5db3e78e1b154cc90813ae99182ab75634"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hubci/arc/releases/download/v0.11.0/arc-v0.11.0-linux-arm64.tar.gz"
      sha256 "7193daf5a82907793a26208335ee34a54939b42ffb3b6bf0deae520f3b559b1c"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.11.0/arc-v0.11.0-linux-amd64.tar.gz"
      sha256 "fd603ae7b78a3c1e711b34d952c9dba18151343f6f3b7f1215d20b4634afe7d8"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
  end

  test do
    system "#{bin}/arc", "help"
  end
end
