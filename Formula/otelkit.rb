class Otelkit < Formula
  desc "Find drift across OpenTelemetry Collector configs and keep them in sync"
  homepage "https://github.com/pratik-mahalle/otelkit"
  version "0.1.0"
  license "MIT"

  base = "https://github.com/pratik-mahalle/otelkit/releases/download/v0.1.0"
  on_macos do
    on_arm do
      url "#{base}/otelkit_0.1.0_darwin_arm64.tar.gz"
      sha256 "06960ef351b1a101ef2da71043a0b25096362f17083fd4fe0caed3750dea5336"
    end
    on_intel do
      url "#{base}/otelkit_0.1.0_darwin_amd64.tar.gz"
      sha256 "ed964a60c23ccfa163949c1c9cff6a3c4908749ca98e17f36090e00a37b9bd46"
    end
  end
  on_linux do
    on_arm do
      url "#{base}/otelkit_0.1.0_linux_arm64.tar.gz"
      sha256 "3f23caa801e065cbc67f91ba78b8fdaf2b425d1d78624ef7fcfb50370ce2005f"
    end
    on_intel do
      url "#{base}/otelkit_0.1.0_linux_amd64.tar.gz"
      sha256 "ee40befafbd45cb51d13df47e7418983a2d4d783a21ed523010b48a580b84a00"
    end
  end

  def install
    bin.install "otelkit"
  end

  test do
    assert_match "otelkit 0.1.0", shell_output("#{bin}/otelkit version")
  end
end
