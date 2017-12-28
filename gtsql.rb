require "formula"

class Gtsql < Formula
  homepage "https://github.com/aytee17/gtfs-to-sqlite"
  url "https://github.com/aytee17/gtfs-to-sqlite/releases/download/v0.0.1-beta/gtfs-to-sqlite-0.0.1.zip"
  sha256 "db91ea25e49bda7507cfeeae4cc1c4b86187b3db53db9956f8a30a9a845f1fe1"

  def install
  	inreplace "brew/gtsql", "##PREFIX##", "#{prefix}"
  	prefix.install "gtfs-to-sqlite-0.0.1-all.jar"
  	bin.install "brew/gtsql"
  end
end
