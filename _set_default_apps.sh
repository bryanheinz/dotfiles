#!/bin/sh

swda=/usr/local/bin/swda
text_editor=/Applications/Nova.app

text_editor_uti=("com.adobe.actionscript" \
    "com.apple.ascii-property-list" \
    "com.apple.property-list" \
    "com.microsoft.asp" \
    "com.microsoft.asp.net" \
    "com.netscape.javascript-source" \
    "com.sass-lang.sass" \
    "com.sass-lang.scss" \
    "info.haml.haml" \
    "io.github.jsx" \
    "net.daringfireball.markdown" \
    "org.apache.httpd.access" \
    "org.asciidoc.asciidoc" \
    "org.coffeescript.coffeescript" \
    "org.dartlang.dart" \
    "org.golang.golang" \
    "org.iso.sql" \
    "org.latex-project.latex" \
    "org.lesscss.less" \
    "org.lua.lua" \
    "org.ruby-lang.erb" \
    "org.rubygems.gemspec" \
    "org.rust-lang.rust" \
    "org.w3.webmanifest" \
    "org.yaml.yaml" \
    "public.conf" \
    "public.css" \
    "public.ini" \
    "public.json" \
    "public.markdown" \
    "public.plain-text" \
    "public.python-script" \
    "public.scheme" \
    "public.shell-script" \
    "public.tsx" \
    "public.typescript" \
    "public.xml" \
    "public.yaml" \
    "public.zsh-script" \
    "public.tcsh-script" \
    "public.bash-script" \
    "public.ksh-script" \
    "public.make-source" \
    "public.perl-script" \
    "public.php-script" \
    "public.script" \
    "public.source-code")

for uti in "${text_editor_uti[@]}"; do
    "$swda" setHandler --app "$text_editor" --UTI "$uti"
done

"$swda" setHandler \
    --app "/Applications/TextMate.app" \
    --UTI com.brettterpstra.bunch.bunchfile
