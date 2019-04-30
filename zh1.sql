/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : zh1

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-04-30 13:53:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zh_article
-- ----------------------------
DROP TABLE IF EXISTS `zh_article`;
CREATE TABLE `zh_article` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '文档标题',
  `title_img` varchar(200) NOT NULL COMMENT '标题图片',
  `is_hot` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门1是0否',
  `is_top` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶1是0否',
  `cate_id` int(10) NOT NULL COMMENT '栏目主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `content` text NOT NULL COMMENT '文档内容',
  `pv` int(10) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1显示0隐藏',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='文档表';

-- ----------------------------
-- Records of zh_article
-- ----------------------------
INSERT INTO `zh_article` VALUES ('17', 'PHP与Ajax操作', '20180201/a083fc5c50b549844adc3be2cf5a74ca.jpg', '0', '0', '1', '4', '<font color=\"#cc9933\">PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作                   \r\n                </font>', '3', '1', '1517470513', '1517470513');
INSERT INTO `zh_article` VALUES ('18', '自己动手写框架教程', '20180201/eb196196fd9ceb31015df573cabcc306.jpg', '0', '0', '1', '1', '<font color=\"#993399\">自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程                   \r\n                </font>', '2', '1', '1517470568', '1517470568');
INSERT INTO `zh_article` VALUES ('19', 'PHP模糊查询技术', '20180201/ffd37728ade39db69a11cb4cbb1273a8.jpg', '0', '0', '2', '4', '<font color=\"#009999\">PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术                   \r\n                </font>', '0', '1', '1517470648', '1517470648');
INSERT INTO `zh_article` VALUES ('20', 'ThinkPHP5企业站点开发指南', '20180201/56f40395769ffb6f5650977f75a8131c.jpg', '0', '0', '3', '4', 'ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南                   \r\n                ', '1', '1', '1517470769', '1517470769');
INSERT INTO `zh_article` VALUES ('21', 'ThinkPHP5经典视频教程', '20180201/2fe5ea182cccbc277c7680a39664bc21.jpg', '0', '0', '3', '4', '<font color=\"#993300\">ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程                   \r\n                </font>', '0', '1', '1517470868', '1517470868');
INSERT INTO `zh_article` VALUES ('22', '新闻发布系统教程', '20180201/2e49e3bd16cfbc759b47ebf5a2fa0b3e.jpg', '0', '0', '2', '4', '<font color=\"#009966\">新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程                   \r\n                </font>', '5', '1', '1517470943', '1517470943');
INSERT INTO `zh_article` VALUES ('23', 'PDO极速入门教程', '20180201/945dad56d6649a3bb32f9f3b33b85f82.jpg', '0', '0', '1', '4', '<font color=\"#009999\" size=\"4\">PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程                   \r\n                </font>', '0', '1', '1517470444', '1517470444');
INSERT INTO `zh_article` VALUES ('24', 'PHP与Ajax操作', '20180201/a083fc5c50b549844adc3be2cf5a74ca.jpg', '0', '0', '1', '1', '<font color=\"#cc9933\">PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作                   \r\n                </font>', '0', '1', '1517470513', '1517470513');
INSERT INTO `zh_article` VALUES ('25', '自己动手写框架教程', '20180201/eb196196fd9ceb31015df573cabcc306.jpg', '0', '0', '1', '4', '<font color=\"#993399\">自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程                   \r\n                </font>', '2', '1', '1517470568', '1517470568');
INSERT INTO `zh_article` VALUES ('26', 'PHP模糊查询技术', '20180201/ffd37728ade39db69a11cb4cbb1273a8.jpg', '0', '0', '2', '4', '<font color=\"#009999\">PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术                   \r\n                </font>', '1', '1', '1517470648', '1517470648');
INSERT INTO `zh_article` VALUES ('27', 'ThinkPHP5企业站点开发指南', '20180201/56f40395769ffb6f5650977f75a8131c.jpg', '0', '0', '3', '4', 'ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南                   \r\n                ', '0', '1', '1517470769', '1517470769');
INSERT INTO `zh_article` VALUES ('28', 'ThinkPHP5经典视频教程', '20180201/2fe5ea182cccbc277c7680a39664bc21.jpg', '0', '0', '3', '4', '<font color=\"#993300\">ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程                   \r\n                </font>', '0', '1', '1517470868', '1517470868');
INSERT INTO `zh_article` VALUES ('29', '新闻发布系统教程', '20180201/2e49e3bd16cfbc759b47ebf5a2fa0b3e.jpg', '0', '0', '2', '4', '<font color=\"#009966\">新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程                   \r\n                </font>', '2', '1', '1517470943', '1556182232');
INSERT INTO `zh_article` VALUES ('30', 'PDO极速入门教程', '20180201/945dad56d6649a3bb32f9f3b33b85f82.jpg', '0', '0', '1', '4', '<font color=\"#009999\" size=\"4\">PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程                   \r\n                </font>', '0', '1', '1517470444', '1517470444');
INSERT INTO `zh_article` VALUES ('31', 'PHP与Ajax操作', '20180201/a083fc5c50b549844adc3be2cf5a74ca.jpg', '0', '0', '1', '1', '<font color=\"#cc9933\">PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作                   \r\n                </font>', '0', '1', '1517470513', '1517470513');
INSERT INTO `zh_article` VALUES ('32', '自己动手写框架教程', '20180201/eb196196fd9ceb31015df573cabcc306.jpg', '0', '0', '1', '4', '<font color=\"#993399\">自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程                   \r\n                </font>', '2', '1', '1517470568', '1517470568');
INSERT INTO `zh_article` VALUES ('33', 'PHP模糊查询技术', '20180201/ffd37728ade39db69a11cb4cbb1273a8.jpg', '0', '0', '2', '4', '<font color=\"#009999\">PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术                   \r\n                </font>', '0', '1', '1517470648', '1517470648');
INSERT INTO `zh_article` VALUES ('34', 'ThinkPHP5企业站点开发指南', '20180201/56f40395769ffb6f5650977f75a8131c.jpg', '0', '0', '3', '4', 'ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南                   \r\n                ', '0', '1', '1517470769', '1517470769');
INSERT INTO `zh_article` VALUES ('35', 'ThinkPHP5经典视频教程', '20180201/2fe5ea182cccbc277c7680a39664bc21.jpg', '0', '0', '3', '4', '<font color=\"#993300\">ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程                   \r\n                </font>', '0', '1', '1517470868', '1517470868');
INSERT INTO `zh_article` VALUES ('36', '新闻发布系统教程', '20180201/2e49e3bd16cfbc759b47ebf5a2fa0b3e.jpg', '0', '0', '2', '4', '<font color=\"#009966\">新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程新闻发布系统教程                   \r\n                </font>', '4', '1', '1517470943', '1556182205');
INSERT INTO `zh_article` VALUES ('37', 'PDO极速入门教程', '20180201/945dad56d6649a3bb32f9f3b33b85f82.jpg', '0', '0', '1', '4', '<font color=\"#009999\" size=\"4\">PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程PDO极速入门教程                   \r\n                </font>', '0', '1', '1517470444', '1517470444');
INSERT INTO `zh_article` VALUES ('38', 'PHP与Ajax操作', '20180201/a083fc5c50b549844adc3be2cf5a74ca.jpg', '0', '0', '1', '4', '<font color=\"#cc9933\">PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作PHP与Ajax操作                   \r\n                </font>', '0', '1', '1517470513', '1517470513');
INSERT INTO `zh_article` VALUES ('39', '自己动手写框架教程', '20180201/eb196196fd9ceb31015df573cabcc306.jpg', '0', '0', '1', '1', '<font color=\"#993399\">自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程自己动手写框架教程                   \r\n                </font>', '2', '1', '1517470568', '1517470568');
INSERT INTO `zh_article` VALUES ('40', 'PHP模糊查询技术', '20180201/ffd37728ade39db69a11cb4cbb1273a8.jpg', '0', '0', '2', '4', '<font color=\"#009999\">PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术PHP模糊查询技术                   \r\n                </font>', '0', '1', '1517470648', '1517470648');
INSERT INTO `zh_article` VALUES ('41', 'ThinkPHP5企业站点开发指南', '20180201/56f40395769ffb6f5650977f75a8131c.jpg', '0', '0', '3', '1', 'ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南ThinkPHP5企业站点开发指南                   \r\n                ', '0', '1', '1517470769', '1517470769');
INSERT INTO `zh_article` VALUES ('42', 'ThinkPHP5经典视频教程', '20180201/2fe5ea182cccbc277c7680a39664bc21.jpg', '0', '0', '3', '4', '<font color=\"#993300\">ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程ThinkPHP5经典视频教程                   \r\n                </font>', '0', '1', '1517470868', '1517470868');
INSERT INTO `zh_article` VALUES ('43', '这是一个测试的', '20190114\\1180ee7ff9be243ad23541dd64675a95.jpg', '0', '0', '1', '8', '实施思思思思思思', '0', '1', '1547454372', '1547454372');
INSERT INTO `zh_article` VALUES ('44', '这是一个测试啊', '20190116\\b8fe0929bf84cff53ebdc8462512568d.jpg', '0', '0', '3', '11', '这一个发布文章的呢or那个好hi', '0', '1', '1547609649', '1547609649');
INSERT INTO `zh_article` VALUES ('45', '这是一个测试的问题', '20190227\\f97abd3a592dbcfcf1ac6d2ac927e952.jpg', '0', '0', '5', '12', '88899', '0', '1', '1551248652', '1551248652');
INSERT INTO `zh_article` VALUES ('46', '德克士的批复了跑', '20190227\\d562c5f4c0d2b87fcc8db0a5cf3868d1.jpg', '0', '0', '1', '12', '<b><u>打发斯蒂芬<font size=\"5\">欧腊帕</font></u></b>', '11', '1', '1551253798', '1556261534');

-- ----------------------------
-- Table structure for zh_article_category
-- ----------------------------
DROP TABLE IF EXISTS `zh_article_category`;
CREATE TABLE `zh_article_category` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `sort` int(4) NOT NULL COMMENT '栏目排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1启用0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文档栏目表';

-- ----------------------------
-- Records of zh_article_category
-- ----------------------------
INSERT INTO `zh_article_category` VALUES ('1', '0', 'PHP', '5', '1', '0', '0');
INSERT INTO `zh_article_category` VALUES ('2', '0', 'MySQL', '1', '1', '0', '0');
INSERT INTO `zh_article_category` VALUES ('3', '0', 'ThinkPHP', '2', '1', '0', '0');
INSERT INTO `zh_article_category` VALUES ('5', '0', 'html', '7', '0', '0', '0');
INSERT INTO `zh_article_category` VALUES ('6', '8', '测试', '0', '1', '1547454280', '1547454280');

-- ----------------------------
-- Table structure for zh_site
-- ----------------------------
DROP TABLE IF EXISTS `zh_site`;
CREATE TABLE `zh_site` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(100) NOT NULL DEFAULT '默认站点' COMMENT '网站名称',
  `keywords` text NOT NULL COMMENT '关键字',
  `desc` text NOT NULL COMMENT '网站描述',
  `is_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '开启状态1开0关',
  `is_comment` tinyint(4) NOT NULL DEFAULT '1' COMMENT '允许评论1开0关',
  `is_reg` tinyint(4) NOT NULL DEFAULT '1' COMMENT '允许注册1开0关',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1允许0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站信息';

-- ----------------------------
-- Records of zh_site
-- ----------------------------
INSERT INTO `zh_site` VALUES ('1', '我的网站', 'PHP中文网', '网站描述', '1', '1', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `is_admin` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否管理员1是0否',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `email` varchar(200) NOT NULL COMMENT '邮箱',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1启用0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES ('1', '0', 'peter', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'peter@php.cn', '18955132304', '1', '1516947541', '1516947541');
INSERT INTO `zh_user` VALUES ('4', '1', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@php.cn', '15899977665', '1', '0', '0');
INSERT INTO `zh_user` VALUES ('5', '0', '测试', '123456', '657705538@qq.com', '13255058566', '1', '0', '0');
INSERT INTO `zh_user` VALUES ('6', '0', '测试时间', '123456789', 'hugeshuobu@163.com', '18649754091', '1', '1545967424', '1545967424');
INSERT INTO `zh_user` VALUES ('7', '0', '密码测试', 'e10adc3949ba59abbe56e057f20f883e', '657705539@qq.com', '18649789568', '1', '1545968407', '1545968407');
INSERT INTO `zh_user` VALUES ('8', '0', '测试四88', 'e10adc3949ba59abbe56e057f20f883e', '32111@qq.com', '18648545100', '1', '1547434874', '1547434874');
INSERT INTO `zh_user` VALUES ('9', '0', '吹灰思思', 'e10adc3949ba59abbe56e057f20f883e', 'ceshi@qq.com', '18649754092', '1', '1547454780', '1547454780');
INSERT INTO `zh_user` VALUES ('10', '0', '吹灰思思', 'e10adc3949ba59abbe56e057f20f883e', 'ceshi1@qq.com', '18649754093', '1', '1547454855', '1547454855');
INSERT INTO `zh_user` VALUES ('11', '0', '这是最后的一个测试', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '18649754098', '1', '1547609622', '1547609622');
INSERT INTO `zh_user` VALUES ('12', '0', '哈哈哈', '25f9e794323b453885f5181f1b624d0b', '123456789@qq.com', '18649754892', '1', '1551248588', '1551248588');

-- ----------------------------
-- Table structure for zh_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_comments`;
CREATE TABLE `zh_user_comments` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `article_id` int(10) NOT NULL COMMENT '文档主键',
  `content` text NOT NULL COMMENT '文档内容',
  `reply_id` int(10) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1显示0隐藏',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档评论表';

-- ----------------------------
-- Records of zh_user_comments
-- ----------------------------

-- ----------------------------
-- Table structure for zh_user_fav
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_fav`;
CREATE TABLE `zh_user_fav` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int(10) NOT NULL COMMENT '文档主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of zh_user_fav
-- ----------------------------

-- ----------------------------
-- Table structure for zh_user_like
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_like`;
CREATE TABLE `zh_user_like` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `art_id` int(10) NOT NULL COMMENT '文档主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户点赞表';

-- ----------------------------
-- Records of zh_user_like
-- ----------------------------
