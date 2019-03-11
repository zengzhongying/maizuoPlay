const webpack = require('webpack');
const path = require('path');
const VueLoaderPlugin = require('vue-loader/lib/plugin')
/*
 * SplitChunksPlugin is enabled by default and replaced
 * deprecated CommonsChunkPlugin. It automatically identifies modules which
 * should be splitted of chunk by heuristics using module duplication count and
 * module category (i. e. node_modules). And splits the chunks…
 *
 * It is safe to remove "splitChunks" from the generated configuration
 * and was added as an educational example.
 *
 * https://webpack.js.org/plugins/split-chunks-plugin/
 *
 */

/*
 * We've enabled UglifyJSPlugin for you! This minifies your app
 * in order to load faster and run less javascript.
 *
 * https://github.com/webpack-contrib/uglifyjs-webpack-plugin
 *
 */

const UglifyJSPlugin = require('uglifyjs-webpack-plugin');

module.exports = {
	module: {
		rules: [
			{
				include: [path.resolve(__dirname, 'src')],
				loader: 'babel-loader',

				options: {
					plugins: ['syntax-dynamic-import'],

					presets: [
						[
							'@babel/preset-env',
							{
								modules: false
							}
						]
					]
				},

				test: /\.js$/
			},
			{
				test: /\.(less|css)$/,

				use: [
					{
						loader: 'css-loader',

						options: {
							sourceMap: true
						}
					},
					{
						loader: 'less-loader',

						options: {
							sourceMap: true
						}
					}
				]
			},
			{
				test: /\.vue$/,

				use: [
					{
						loader: 'vue-loader',
					}
				]
			},
		]
	},
	// entry: './app.js',
	output: {
		path: path.resolve(__dirname, 'public/javascripts'),
		chunkFilename: '[name].js',
		filename: '[name].js'
	},
	devServer: {

		// contentBase: path.resolve(__dirname, './public/javascripts'),
		// contentBase: './public/javascripts',
		host: 'localhost',
		port: '3000',
		open: false, //自动拉起浏览器
		hot: true,//热加载
		// hotOnly:true
	},

	plugins: [
		// 请确保引入这个插件！
		new VueLoaderPlugin(),
		//热更新
		new webpack.HotModuleReplacementPlugin()
	],
	mode: 'development',

	optimization: {
		splitChunks: {
			cacheGroups: {
				vendors: {
					priority: -10,
					test: /[\\/]node_modules[\\/]/
				}
			},

			chunks: 'async',
			minChunks: 1,
			minSize: 30000,
			name: true
		}
	}
};
