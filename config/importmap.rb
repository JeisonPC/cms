# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@stylesheets", to: "app/assets/stylesheets"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

# Agregar la fuente de Google Fonts al importmap
pin '@fontsource/poppins', preload: true

pin "@adobe/css-tools", to: "https://ga.jspm.io/npm:@adobe/css-tools@4.2.0/dist/cjs/cssTools.js"
pin "assert", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/assert.js"
pin "balanced-match", to: "https://ga.jspm.io/npm:balanced-match@1.0.2/index.js"
pin "brace-expansion", to: "https://ga.jspm.io/npm:brace-expansion@1.1.11/index.js"
pin "buffer", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/buffer.js"
pin "concat-map", to: "https://ga.jspm.io/npm:concat-map@0.0.1/index.js"
pin "crypto", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/crypto.js"
pin "debug", to: "https://ga.jspm.io/npm:debug@4.3.4/src/browser.js"
pin "events", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/events.js"
pin "fs", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js"
pin "fs.realpath", to: "https://ga.jspm.io/npm:fs.realpath@1.0.0/index.js"
pin "glob", to: "https://ga.jspm.io/npm:glob@7.2.3/glob.js"
pin "inflight", to: "https://ga.jspm.io/npm:inflight@1.0.6/inflight.js"
pin "inherits", to: "https://ga.jspm.io/npm:inherits@2.0.4/inherits_browser.js"
pin "minimatch", to: "https://ga.jspm.io/npm:minimatch@3.1.2/minimatch.js"
pin "ms", to: "https://ga.jspm.io/npm:ms@2.1.2/index.js"
pin "once", to: "https://ga.jspm.io/npm:once@1.4.0/once.js"
pin "path", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/path.js"
pin "path-is-absolute", to: "https://ga.jspm.io/npm:path-is-absolute@1.0.1/index.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "sax", to: "https://ga.jspm.io/npm:sax@1.2.4/lib/sax.js"
pin "source-map", to: "https://ga.jspm.io/npm:source-map@0.7.4/source-map.js"
pin "stream", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/stream.js"
pin "string_decoder", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/string_decoder.js"
pin "stylus", to: "https://ga.jspm.io/npm:stylus@0.59.0/index.js"
pin "url", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js"
pin "util", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/util.js"
pin "wrappy", to: "https://ga.jspm.io/npm:wrappy@1.0.2/wrappy.js"
