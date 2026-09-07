# frozen_string_literal: true

require "relaton/nist/data_fetcher"

# ARGV[0] is a NIST-Tech-Pubs release tag, for example "July2026".
# With no argument the fetcher takes the latest release.
Relaton::Nist::DataFetcher.fetch ARGV[0]
