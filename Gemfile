# frozen_string_literal: true

source "https://rubygems.org"

# relaton 2.x is a single unpublished gem in the relaton/relaton monorepo. Pull
# it from main over HTTPS, so the GitHub Actions runner can clone the public
# repository anonymously, without an SSH key.
#
# The revisions and versions below are the gem set of the last good Fetcher run
# (2026-09-30). Newer pre-releases (moxml, leptris, lutaml-model, pubid with
# parsanol) crashed the parse or stopped the runner. Release one pin at
# a time, and keep the change only after a full Fetcher run passes on a branch.
gem "relaton", git: "https://github.com/relaton/relaton.git",
               ref: "6261bdf2ef76aeebf2e22b0e76b9bc0d20daf767"

# pubid 2.x is unpublished. Take the v2 line from a commit on the monorepo main
# branch.
gem "pubid", git: "https://github.com/metanorma/pubid.git",
             ref: "3c032308c079d905b4d6618bb6358c6c3abc5543"

# Pins for indirect dependencies. Without a lockfile, Bundler takes the newest
# version of each gem on every run, so pin the XML stack of the good run.
# moxml 0.5.99 called ObjectSpace::WeakMap#clear (no such method) and crashed
# the MODS parse. moxml 0.5.103 fixed that, but with leptris 1.9.290 and
# lutaml-model 0.8.90 the runner stopped mid-crawl, most likely out of memory
# (runs 37055589999 and 37090623082).
gem "canon", "0.3.76"
gem "leptris", "1.9.280.1"
gem "lutaml-model", "0.8.87"
gem "moxml", "0.5.96"
gem "yeptris", "0.6.28.1"
