/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : zzy

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/13/2019 18:08:50 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `exceptions`
-- ----------------------------
DROP TABLE IF EXISTS `exceptions`;
CREATE TABLE `exceptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text,
  `source` varchar(255) DEFAULT NULL,
  `besides` varchar(255) DEFAULT NULL,
  `happendTime` varchar(255) NOT NULL,
  `component` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `exceptions`
-- ----------------------------
BEGIN;
INSERT INTO `exceptions` VALUES ('139', '2019-03-13 17:58:04', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:03', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('140', '2019-03-13 17:58:04', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:04', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('141', '2019-03-13 17:58:07', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:04', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('142', '2019-03-13 17:58:07', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:04', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('143', '2019-03-13 17:58:07', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:05', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('144', '2019-03-13 17:58:07', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:05', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined'), ('145', '2019-03-13 17:58:07', 'TypeError: Cannot read property \'name\' of undefined\n    at VueComponent.doError (webpack:///./src/view/home/ason.vue?./node_modules/babel-loader/lib??ref--0!./node_modules/vue-loader/lib??vue-loader-options:11:27)\n    at invokeWithErrorHandling (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:1853:26)\n    at HTMLParagraphElement.invoker (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:2177:14)\n    at HTMLParagraphElement.original._wrapper (webpack:///./node_modules/vue/dist/vue.runtime.esm.js?:6870:25)', 'AAAAAAAAAAAAA', '备注字段', '2019/3/13 下午5:58:05', 'vue-component-5-Sonaaaa', 'Cannot read property \'name\' of undefined');
COMMIT;

-- ----------------------------
--  Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `sex` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `students`
-- ----------------------------
BEGIN;
INSERT INTO `students` VALUES ('123', '1', '123', '0'), ('aa', '2', '123', '0'), ('aaa', '3', '1123123', '0'), ('123', '4', '22', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
