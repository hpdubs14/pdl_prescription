# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ZenTest}
  s.version = "4.6.2"

  s.required_rubygems_version = Gem::Requirement.new("~> 1.8") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Ryan Davis}, %q{Eric Hodel}]
  s.cert_chain = [%q{-----BEGIN CERTIFICATE-----
MIIDPjCCAiagAwIBAgIBADANBgkqhkiG9w0BAQUFADBFMRMwEQYDVQQDDApyeWFu
ZC1ydWJ5MRkwFwYKCZImiZPyLGQBGRYJemVuc3BpZGVyMRMwEQYKCZImiZPyLGQB
GRYDY29tMB4XDTA5MDMwNjE4NTMxNVoXDTEwMDMwNjE4NTMxNVowRTETMBEGA1UE
AwwKcnlhbmQtcnVieTEZMBcGCgmSJomT8ixkARkWCXplbnNwaWRlcjETMBEGCgmS
JomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALda
b9DCgK+627gPJkB6XfjZ1itoOQvpqH1EXScSaba9/S2VF22VYQbXU1xQXL/WzCkx
taCPaLmfYIaFcHHCSY4hYDJijRQkLxPeB3xbOfzfLoBDbjvx5JxgJxUjmGa7xhcT
oOvjtt5P8+GSK9zLzxQP0gVLS/D0FmoE44XuDr3iQkVS2ujU5zZL84mMNqNB1znh
GiadM9GHRaDiaxuX0cIUBj19T01mVE2iymf9I6bEsiayK/n6QujtyCbTWsAS9Rqt
qhtV7HJxNKuPj/JFH0D2cswvzznE/a5FOYO68g+YCuFi5L8wZuuM8zzdwjrWHqSV
gBEfoTEGr7Zii72cx+sCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw
HQYDVR0OBBYEFEfFe9md/r/tj/Wmwpy+MI8d9k/hMA0GCSqGSIb3DQEBBQUAA4IB
AQAY59gYvDxqSqgC92nAP9P8dnGgfZgLxP237xS6XxFGJSghdz/nI6pusfCWKM8m
vzjjH2wUMSSf3tNudQ3rCGLf2epkcU13/rguI88wO6MrE0wi4ZqLQX+eZQFskJb/
w6x9W1ur8eR01s397LSMexySDBrJOh34cm2AlfKr/jokKCTwcM0OvVZnAutaovC0
l1SVZ0ecg88bsWHA0Yhh7NFxK1utWoIhtB6AFC/+trM0FQEB/jZkIS8SaNzn96Rl
n0sZEf77FLf5peR8TP/PtmIg7Cyqz23sLM4mCOoTGIy5OcZ8TdyiyINUHtb5ej/T
FBHgymkyj/AOSqKRIpXPhjC6
-----END CERTIFICATE-----
}]
  s.date = %q{2011-08-24}
  s.description = %q{ZenTest provides 4 different tools: zentest, unit_diff, autotest, and
multiruby.

ZenTest scans your target and unit-test code and writes your missing
code based on simple naming rules, enabling XP at a much quicker
pace. ZenTest only works with Ruby and Test::Unit. Nobody uses this
tool anymore but it is the package namesake, so it stays.

unit_diff is a command-line filter to diff expected results from
actual results and allow you to quickly see exactly what is wrong.
Do note that minitest 2.2+ provides an enhanced assert_equal obviating
the need for unit_diff

autotest is a continous testing facility meant to be used during
development. As soon as you save a file, autotest will run the
corresponding dependent tests.

multiruby runs anything you want on multiple versions of ruby. Great
for compatibility checking! Use multiruby_setup to manage your
installed versions.}
  s.email = [%q{ryand-ruby@zenspider.com}, %q{drbrain@segment7.net}]
  s.executables = [%q{autotest}, %q{multigem}, %q{multiruby}, %q{multiruby_setup}, %q{unit_diff}, %q{zentest}]
  s.extra_rdoc_files = [%q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{articles/how_to_use_zentest.txt}, %q{example.txt}]
  s.files = [%q{bin/autotest}, %q{bin/multigem}, %q{bin/multiruby}, %q{bin/multiruby_setup}, %q{bin/unit_diff}, %q{bin/zentest}, %q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{articles/how_to_use_zentest.txt}, %q{example.txt}]
  s.homepage = %q{https://github.com/seattlerb/zentest}
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{zentest}
  s.rubygems_version = %q{1.8.9}
  s.summary = %q{ZenTest provides 4 different tools: zentest, unit_diff, autotest, and multiruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 2.5"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
    else
      s.add_dependency(%q<minitest>, ["~> 2.5"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 2.5"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
  end
end
