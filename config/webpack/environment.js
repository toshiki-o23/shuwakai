const { environment } = require('@rails/webpacker')

module.exports = environment

// importやrequireなしで$やBootstrapのJavaScriptを使用
const webpack = require('webpack')
  environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
      $: 'jquery/src/jquery',
      jQuery: 'jquery/src/jquery',
      Popper: ['popper.js', 'default']
    })
  )
