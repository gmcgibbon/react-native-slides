do ->
  onLoad = ->
    Prism.highlightAll()
  startApp = ->
    head.load(
      'vendor/prismjs/components/prism-jsx.js',
      onLoad
    )
  startSlideshow = ->
    Reveal.initialize(
      history: true
      dependencies: [
        { src: 'vendor/reveal.js/plugin/markdown/marked.js' },
        { src: 'vendor/reveal.js/plugin/markdown/markdown.js' },
        { src: 'vendor/prismjs/prism.js', async: true, callback: startApp }
      ]
    )
  document.addEventListener 'DOMContentLoaded', startSlideshow
