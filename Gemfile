# frozen_string_literal: true

source "https://rubygems.org"

# relaton 2.x is a single unpublished gem in the relaton/relaton monorepo. Pull
# it from main over HTTPS, so the GitHub Actions runner can clone the public
# repository anonymously, without an SSH key.
gem "relaton", git: "https://github.com/relaton/relaton.git", branch: "main"

# pubid 2.x is unpublished. Take the v2 line from the monorepo main branch.
gem "pubid", git: "https://github.com/metanorma/pubid.git", branch: "main"
