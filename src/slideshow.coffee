do ->
  highlightCode = ->
    head.load(
      'vendor/prismjs/components/prism-jsx.js',
      Prism.highlightAll
    )
  startSlideshow = ->
    Reveal.initialize(
      history: true
      dependencies: [
        { src: 'vendor/reveal.js/plugin/markdown/marked.js' },
        { src: 'vendor/reveal.js/plugin/markdown/markdown.js' },
        { src: 'vendor/prismjs/prism.js', async: true, callback: highlightCode }
      ]
    )
  document.addEventListener 'DOMContentLoaded', startSlideshow
