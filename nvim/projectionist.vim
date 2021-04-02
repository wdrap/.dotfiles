let g:projectionist_heuristics = {
    \   '*': {
    \       'src/main/java/*.java': {
    \           'alternate': 'src/test/java/{}Tests.java',
    \           'type': 'source'
    \       },
    \       'src/test/java/*.java': {
    \           'alternate': 'src/main/java/{}.java',
    \           'type': 'test'
    \       }
    \   }
    \}
