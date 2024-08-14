const path = require('path');

module.exports = {
  entry: './app/javascript/packs/application.js',  // エントリーポイントを指定
  output: {
    filename: 'bundle.js',  // 出力ファイル名
    path: path.resolve(__dirname, 'public/packs'),  // 出力先ディレクトリ
    publicPath: '/packs/',  // 公開パス
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env'],
          },
        },
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },
  devServer: {
    static: {
      directory: path.resolve(__dirname, 'public'),  // Webpack Dev Server が提供する静的ファイルのディレクトリ
    },
    compress: true,
    port: 3035,
    static: {
      publicPath: '/packs/',  // Webpack Dev Server が提供する静的ファイルの公開パス
    },
    hot: true,  // ホットリロードを有効にする
  },
};
