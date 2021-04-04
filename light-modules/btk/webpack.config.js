const webpack = require('webpack');
const path = require('path');

module.exports = env => {
  return {
    entry: `./${env.SRC}/js/index.js`,
    output: {
      filename: 'index.min.js',
      path: path.resolve(__dirname, env.BUILD, 'js')
    }
  };
};
