-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `aplicaciones`;
CREATE TABLE `aplicaciones` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_nombre` varchar(140) NOT NULL,
  `app_descripcion` text NOT NULL,
  `app_ruta_amigable` varchar(255) NOT NULL,
  `app_nav_url` varchar(150) NOT NULL,
  `app_url` varchar(150) NOT NULL,
  `app_icono` varchar(150) NOT NULL,
  `app_color` varchar(150) NOT NULL,
  `app_orden` int(11) NOT NULL,
  `app_activar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `calendario`;
CREATE TABLE `calendario` (
  `cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `cal_nombre` varchar(150) NOT NULL,
  `cal_ruta_amigable` varchar(255) NOT NULL,
  `cal_descripcion` varchar(255) NOT NULL,
  `cal_color` varchar(20) NOT NULL,
  `cal_papelera` int(11) NOT NULL,
  `cal_usuario` int(11) NOT NULL,
  `cal_activar` int(11) NOT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `calendario_categoria`;
CREATE TABLE `calendario_categoria` (
  `cal_cat_id_cal` int(11) NOT NULL,
  `cal_cat_id_cat` int(11) NOT NULL,
  PRIMARY KEY (`cal_cat_id_cal`,`cal_cat_id_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `calendario_grupo`;
CREATE TABLE `calendario_grupo` (
  `cal_grp_id_cal` int(11) NOT NULL,
  `cal_grp_id_grp` int(11) NOT NULL,
  PRIMARY KEY (`cal_grp_id_cal`,`cal_grp_id_grp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_ruta_amigable` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_imagen` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_icono` varchar(45) CHARACTER SET utf8 NOT NULL,
  `cat_color` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_codigos` text CHARACTER SET utf8 NOT NULL,
  `cat_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_meta` text COLLATE utf8_spanish_ci NOT NULL,
  `cat_theme` text COLLATE utf8_spanish_ci NOT NULL,
  `cat_id_padre` int(11) NOT NULL DEFAULT '0',
  `cat_id_plantilla` int(11) NOT NULL DEFAULT '0',
  `cat_orden` int(11) NOT NULL DEFAULT '0',
  `cat_tipo` char(1) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `cat_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_destino` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '_self',
  `cat_favicon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_analitica` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_ruta_sitio` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_dominio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `cat_activar` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  FULLTEXT KEY `busqueda` (`cat_nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `categoria` (`cat_id`, `cat_nombre`, `cat_descripcion`, `cat_ruta_amigable`, `cat_imagen`, `cat_icono`, `cat_color`, `cat_codigos`, `cat_css`, `cat_clase`, `cat_meta`, `cat_theme`, `cat_id_padre`, `cat_id_plantilla`, `cat_orden`, `cat_tipo`, `cat_url`, `cat_destino`, `cat_favicon`, `cat_analitica`, `cat_ruta_sitio`, `cat_dominio`, `cat_activar`) VALUES
(1,	'Portada',	'',	'portada',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(2,	'Sobre Nosotros',	'',	'sobre-nosotros',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	2,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(3,	'Empresas de Reciclaje',	'',	'empresas-de-reciclaje',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	4,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(4,	'Noticias',	'',	'noticias',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	3,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(5,	'Empresas Afiliadas',	'',	'empresas-afiliadas',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	5,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(7,	'Contácto',	'',	'contacto',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	7,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(8,	'Papel',	'',	'papel',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(9,	'Cartón',	'',	'carton',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(10,	'Plásticos',	'',	'plasticos',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(11,	'Vidrio',	'',	'vidrio',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(12,	'Metálicos y no metálicos',	'',	'metalicos-y-no-metalicos',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(13,	'RAEE',	'',	'raee',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(14,	'Orgánicos',	'',	'organicos',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(15,	'Otros',	'',	'otros',	'',	'',	'',	'',	'',	'',	'',	'',	3,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(16,	'Galerias',	'',	'galerias',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	4,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(17,	'Calendario de Actividades',	'',	'calendario-de-actividades',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	6,	'0',	'',	'_self',	'',	'',	'',	'',	0);

DROP TABLE IF EXISTS `categoria_almacen`;
CREATE TABLE `categoria_almacen` (
  `cat_alm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_alm_nombre` varchar(50) NOT NULL,
  `cat_alm_descripcion` varchar(250) NOT NULL,
  `cat_alm_activar` int(11) NOT NULL,
  `cat_alm_id_padre` int(11) NOT NULL,
  `cat_alm_usuario` int(11) NOT NULL,
  `cat_alm_orden` int(11) NOT NULL,
  PRIMARY KEY (`cat_alm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_texto` text CHARACTER SET latin1 NOT NULL,
  `com_usuario` int(11) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_activar` int(11) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `comentario` (`com_id`, `com_texto`, `com_usuario`, `com_fecha`, `com_activar`) VALUES
(1,	'hola mundo',	1,	'2016-08-11 00:08:47',	1),
(2,	'ya tenemos  la base de comentarios :D',	1,	'2016-08-11 00:08:33',	1);

DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE `configuracion` (
  `conf_nombre_sitio` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_favicon` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `conf_script_head` text CHARACTER SET utf8 NOT NULL,
  `conf_script_footer` text CHARACTER SET utf8 NOT NULL,
  `conf_meta` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`conf_nombre_sitio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `configuracion` (`conf_nombre_sitio`, `conf_imagen`, `conf_favicon`, `conf_script_head`, `conf_script_footer`, `conf_meta`) VALUES
('Fundare Santa Cruz  - Bolivia - RAEE - RAEE\'s ',	'images/logo.svg',	'images/favicon.svg',	'',	'',	'modulos/meta.pub.php');

DROP TABLE IF EXISTS `contenedor`;
CREATE TABLE `contenedor` (
  `cont_id` int(11) NOT NULL AUTO_INCREMENT,
  `cont_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_codigos` text CHARACTER SET utf8 NOT NULL,
  `cont_id_padre` int(11) NOT NULL,
  `cont_orden` int(11) NOT NULL DEFAULT '1',
  `cont_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `contenedor` (`cont_id`, `cont_nombre`, `cont_clase`, `cont_css`, `cont_codigos`, `cont_id_padre`, `cont_orden`, `cont_activar`) VALUES
(1,	'diagrama_general',	'',	'',	'',	0,	1,	1),
(2,	'diagrama_2',	'clase',	'css',	'codigos',	0,	2,	1),
(3,	'cabecera',	'container',	'',	'',	1,	0,	1),
(4,	'cuerpo',	'',	'',	'',	1,	0,	1),
(5,	'pie',	'',	'',	'',	1,	0,	1);

DROP TABLE IF EXISTS `contenedor_plantilla`;
CREATE TABLE `contenedor_plantilla` (
  `contenedor_cont_id` int(11) NOT NULL,
  `plantilla_pla_id` int(11) NOT NULL,
  PRIMARY KEY (`contenedor_cont_id`,`plantilla_pla_id`),
  KEY `fk_contenedor_has_plantilla_plantilla1_idx` (`plantilla_pla_id`) USING BTREE,
  KEY `fk_contenedor_has_plantilla_contenedor1_idx` (`contenedor_cont_id`) USING BTREE,
  CONSTRAINT `fk_contenedor_plantilla_contenedor1` FOREIGN KEY (`contenedor_cont_id`) REFERENCES `contenedor` (`cont_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contenedor_plantilla_plantilla1` FOREIGN KEY (`plantilla_pla_id`) REFERENCES `plantilla` (`pla_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `contenedor_plantilla` (`contenedor_cont_id`, `plantilla_pla_id`) VALUES
(1,	1),
(1,	2),
(1,	3);

DROP TABLE IF EXISTS `contenidos`;
CREATE TABLE `contenidos` (
  `conte_id` int(11) NOT NULL AUTO_INCREMENT,
  `conte_titulo` varchar(250) NOT NULL,
  `conte_ruta_amigable` varchar(200) NOT NULL,
  `conte_subtitulo` text NOT NULL,
  `conte_cuerpo` text NOT NULL,
  `conte_foto` varchar(250) NOT NULL,
  `conte_fecha` datetime NOT NULL,
  `conte_id_usuario` int(11) NOT NULL,
  `conte_tag` varchar(100) NOT NULL,
  `conte_id_dominio` int(11) NOT NULL,
  `conte_activar` int(1) NOT NULL,
  PRIMARY KEY (`conte_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `contenidos` (`conte_id`, `conte_titulo`, `conte_ruta_amigable`, `conte_subtitulo`, `conte_cuerpo`, `conte_foto`, `conte_fecha`, `conte_id_usuario`, `conte_tag`, `conte_id_dominio`, `conte_activar`) VALUES
(3,	'Nosotros',	'nosotros',	'',	'<p><b>Sobre Nosotros</b></p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum.</p><p><b>Misión </b></p><p>Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere consectetur est at lobortis.</p><p><b>Visión</b></p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum.</p><p><b>Valores</b></p><ul><li>Etiam porta sem malesuada magna mollis euismod. </li><li>Etiam porta sem malesuada magna mollis euismod. </li><li>Fusce dapibus, tellus ac cursus commodo, tortor mauris.</li><li>Condimentum nibh, ut fermentum massa justo sit amet risus.</li><li> Lorem ipsum dolor sit amet, consectetur adipiscing elit. </li><li>Sed posuere consectetur est at lobortis.</li></ul>',	'archivos/contenidos/banner-1200x300.jpg',	'2016-10-14 11:10:00',	1,	'',	0,	1);

DROP TABLE IF EXISTS `contenidos_categorias`;
CREATE TABLE `contenidos_categorias` (
  `conte_cat_conte_id` int(11) NOT NULL,
  `conte_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`conte_cat_conte_id`,`conte_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `contenidos_documentos`;
CREATE TABLE `contenidos_documentos` (
  `conte_doc_conte_id` int(11) NOT NULL,
  `conte_doc_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`conte_doc_conte_id`,`conte_doc_doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `cron_jobs`;
CREATE TABLE `cron_jobs` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_fecha` datetime NOT NULL,
  `cron_total` int(11) NOT NULL,
  `cron_num` int(11) NOT NULL,
  `cron_accion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cron_id_accion` int(11) NOT NULL,
  `cron_estado` int(1) NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta` (
  `cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_tipo` int(11) NOT NULL,
  PRIMARY KEY (`cuenta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_nombre` varchar(255) NOT NULL,
  `doc_ruta_amigable` varchar(255) NOT NULL,
  `doc_descripcion` text NOT NULL,
  `doc_url` varchar(255) NOT NULL,
  `doc_imagen` varchar(255) NOT NULL,
  `doc_tipo_archivo` varchar(255) NOT NULL,
  `doc_tamano` varchar(255) NOT NULL,
  `doc_tags` varchar(255) NOT NULL,
  `doc_fecha` date NOT NULL,
  `doc_usuario` int(11) NOT NULL,
  `doc_id_dominio` int(11) NOT NULL,
  `doc_orden` int(11) NOT NULL,
  `doc_activar` int(11) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `documento_rel`;
CREATE TABLE `documento_rel` (
  `doc_rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_rel_doc_id` int(11) NOT NULL,
  `doc_rel_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`doc_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `documento_rel` (`doc_rel_id`, `doc_rel_doc_id`, `doc_rel_cat_id`) VALUES
(2,	0,	7);

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_nombre` varchar(255) NOT NULL,
  `emp_descripcion` varchar(255) NOT NULL,
  `emp_logo` varchar(255) NOT NULL,
  `emp_icon` varchar(255) NOT NULL,
  `emp_razon_social` varchar(255) NOT NULL,
  `emp_nit` varchar(255) NOT NULL,
  `emp_direccion` varchar(255) NOT NULL,
  `emp_coordenadas` varchar(255) NOT NULL,
  `emp_rubro` varchar(255) NOT NULL,
  `emp_telefono` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_web` varchar(255) NOT NULL,
  `emp_activar` int(11) NOT NULL,
  `emp_nombre_contacto` varchar(150) NOT NULL,
  `emp_telefono_contacto` varchar(50) NOT NULL,
  `emp_email_contacto` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `empresa` (`emp_id`, `emp_nombre`, `emp_descripcion`, `emp_logo`, `emp_icon`, `emp_razon_social`, `emp_nit`, `emp_direccion`, `emp_coordenadas`, `emp_rubro`, `emp_telefono`, `emp_email`, `emp_web`, `emp_activar`, `emp_nombre_contacto`, `emp_telefono_contacto`, `emp_email_contacto`) VALUES
(1,	'RAEE Fundare Santa Cruz',	'Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.',	'archivos/empresas/logo-raee.jpg',	'',	'',	'',	'Torres Cainco, Oficia #53',	'',	'',	'+591 (3) 3383170 / 78420084',	'fundareraee@cainco.org.bo',	'',	1,	'',	'',	''),
(2,	'Comunidad de Madrid',	'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta ',	'archivos/empresas/logo-comunidad-madrid.jpg',	'',	'',	'',	'Risus Elit Egestas Adipiscing #3434 . Madrid España ',	'',	'',	'',	'info@comunidadmadrid.org',	'comunidadmadrid.org',	1,	'',	'',	''),
(3,	'Fundación Iberoamérica Europa',	'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. ',	'archivos/empresas/logo-fundacion-cipie.jpg',	'',	'',	'',	'',	'',	'',	'',	'info@fundacion.org',	'',	1,	'',	'',	''),
(4,	'Cainco',	'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.',	'archivos/empresas/logo-cainco.png',	'',	'',	'',	'',	'',	'',	'',	'info@caingo.org.bo',	'www.cainco.org.bo',	1,	'',	'',	''),
(5,	'Emacruz',	'Aenean lacinia bibendum nulla sed consectetur. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. ',	'archivos/empresas/logo-emacruz.jpg',	'',	'',	'',	'',	'',	'',	'',	'',	'',	1,	'',	'',	'');

DROP TABLE IF EXISTS `empresa_categoria`;
CREATE TABLE `empresa_categoria` (
  `emp_cat_emp_id` int(11) NOT NULL,
  `emp_cat_cat_id` int(11) NOT NULL,
  `emp_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`emp_cat_emp_id`,`emp_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `empresa_tipo`;
CREATE TABLE `empresa_tipo` (
  `emp_tip_emp_id` int(11) NOT NULL,
  `emp_tip_tip_id` int(11) NOT NULL,
  `emp_tip_orden` int(11) NOT NULL,
  PRIMARY KEY (`emp_tip_emp_id`,`emp_tip_tip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `empresa_tipo` (`emp_tip_emp_id`, `emp_tip_tip_id`, `emp_tip_orden`) VALUES
(1,	1,	0),
(2,	1,	0),
(3,	1,	0),
(4,	1,	0),
(5,	1,	0);

DROP TABLE IF EXISTS `enlaces`;
CREATE TABLE `enlaces` (
  `enl_id` int(11) NOT NULL AUTO_INCREMENT,
  `enl_nombre` varchar(150) NOT NULL,
  `enl_descripcion` varchar(255) NOT NULL,
  `enl_link` varchar(255) NOT NULL,
  `enl_target` varchar(15) NOT NULL,
  `enl_imagen` varchar(255) NOT NULL,
  `enl_clases` varchar(150) NOT NULL,
  `enl_activar` int(11) NOT NULL,
  `enl_papelera` int(11) NOT NULL,
  PRIMARY KEY (`enl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlaces_categorias`;
CREATE TABLE `enlaces_categorias` (
  `enl_cat_enl_id` int(11) NOT NULL,
  `enl_cat_cat_id` int(11) NOT NULL,
  `enl_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_cat_enl_id`,`enl_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlaces_grupo_usuario`;
CREATE TABLE `enlaces_grupo_usuario` (
  `enl_grp_us_enl_id` int(11) NOT NULL,
  `enl_grp_us_grp_us_id` int(11) NOT NULL,
  `enl_grp_us_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_grp_us_enl_id`,`enl_grp_us_grp_us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlaces_publicaciones`;
CREATE TABLE `enlaces_publicaciones` (
  `enl_pub_enl_id` int(11) NOT NULL,
  `enl_pub_pub_id` int(11) NOT NULL,
  `enl_pub_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_pub_enl_id`,`enl_pub_pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento`;
CREATE TABLE `evento` (
  `eve_id` int(11) NOT NULL AUTO_INCREMENT,
  `eve_nombre` varchar(150) NOT NULL,
  `eve_descripcion` varchar(255) NOT NULL,
  `eve_coordenadas` varchar(100) NOT NULL,
  `eve_localizacion` varchar(255) NOT NULL,
  `eve_dia` int(1) NOT NULL,
  `eve_inicio` datetime NOT NULL,
  `eve_fin` datetime NOT NULL,
  `eve_alerta_mail` int(11) NOT NULL,
  `eve_ver` int(1) NOT NULL COMMENT '1=Libre; 2=Ocupado',
  `eve_url` varchar(255) NOT NULL,
  `eve_notas` varchar(255) NOT NULL,
  `eve_invitados` text NOT NULL,
  `eve_usuario` int(11) NOT NULL,
  `eve_papelera` int(11) NOT NULL,
  `eve_activar` int(11) NOT NULL,
  `eve_imagen` varchar(255) NOT NULL,
  `eve_id_dominio` int(11) NOT NULL,
  PRIMARY KEY (`eve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_calendario`;
CREATE TABLE `evento_calendario` (
  `eve_cal_eve_id` int(11) NOT NULL,
  `eve_cal_cal_id` int(11) NOT NULL,
  PRIMARY KEY (`eve_cal_eve_id`,`eve_cal_cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_grupos`;
CREATE TABLE `evento_grupos` (
  `eve_grp_id_eve` int(11) NOT NULL,
  `eve_grp_id_grp` int(11) NOT NULL,
  PRIMARY KEY (`eve_grp_id_eve`,`eve_grp_id_grp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_roles`;
CREATE TABLE `evento_roles` (
  `eve_rol_id_eve` int(11) NOT NULL,
  `eve_rol_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`eve_rol_id_eve`,`eve_rol_id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `grupo_id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_nombre` varchar(45) CHARACTER SET utf8 NOT NULL,
  `grupo_detalle` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `grupo_funciones` varchar(255) CHARACTER SET utf8 NOT NULL,
  `grupo_activar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mod_descripcion` text CHARACTER SET utf8 NOT NULL,
  `mod_ruta_amigable` varchar(45) CHARACTER SET utf8 NOT NULL,
  `mod_bd` varchar(45) CHARACTER SET utf8 NOT NULL,
  `mod_bd_prefijo` varchar(45) CHARACTER SET utf8 NOT NULL,
  `mod_bd_relaciones` text CHARACTER SET utf8 NOT NULL,
  `mod_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mod_icono` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mod_color` varchar(7) CHARACTER SET utf8 NOT NULL,
  `mod_tipo` int(11) NOT NULL,
  `mod_id_padre` int(11) NOT NULL,
  `mod_activar` int(11) NOT NULL COMMENT '0 - no publicado1 - publicado',
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `modulos` (`mod_id`, `mod_nombre`, `mod_descripcion`, `mod_ruta_amigable`, `mod_bd`, `mod_bd_prefijo`, `mod_bd_relaciones`, `mod_url`, `mod_icono`, `mod_color`, `mod_tipo`, `mod_id_padre`, `mod_activar`) VALUES
(1,	'Sistemas',	'',	'sistemas',	'sistemas',	'sis_',	'sistemas_modulos:sistemas_sis_id',	'modulos/sistemas/sistemas.adm.php',	'icn-system',	'#191B1C',	2,	0,	1),
(2,	'Modulos',	'',	'modulos',	'modulos',	'mod_',	'modulos_categoria:modulos_mod_id,sistemas_modulos:modulos_mod_id',	'modulos/modulos/modulos.adm.php',	'icn-box',	'#99C14C',	2,	0,	1),
(3,	'Aplicaciones',	'',	'',	'aplicaciones',	'app_',	'',	'modulos/aplicaciones/apps.adm.php',	'icn-apps',	'#f39333',	2,	0,	1),
(4,	'Usuarios',	'',	'usuarios',	'usuarios',	'usu_',	'usuarios_grupos:usuarios_usu_id,ususuarios_roles:usuarios_usu_id',	'modulos/usuarios/usuarios.adm.php',	'icn-users',	'#0076ff',	2,	0,	1),
(5,	'Categorias',	'',	'categorias',	'categoria',	'cat_',	'',	'modulos/categorias/categorias.adm.php',	'icn-category color-text-violeta-a',	'#806aad',	2,	0,	1),
(6,	'Configuración Site',	'',	'configuracion-sites',	'configuracion',	'config_',	'',	'modulos/config/config.adm.php',	'icn-conf color-text-rojo',	'#e71882',	2,	0,	1),
(7,	'Sitios',	'',	'sitios',	'sitios',	'sitios_',	'',	'modulos/sitios/sitios.adm.php',	'icn-boxs',	'#2d9ee0',	2,	0,	1),
(8,	'Contenidos',	'',	'contenidos',	'contenidos',	'conte_',	'contenidos_categorias:conte_cat_conte_id,contenidos_documento:conte_doc_conte_id',	'modulos/contenidos/contenidos.adm.php',	'icn-content',	'#00bdc6',	0,	0,	1),
(9,	'Categorias productos',	'',	'cat-productos',	'categoria',	'cat_',	'mod_productos_catg_cat:mod_prod_catg_cat_cat_id',	'modulos/productos/prod-cat.adm.php',	'icn-category',	'#dcdc07',	0,	0,	1),
(10,	'Productos',	'',	'productos',	'mod_productos',	'mod_prod_',	'mod_productos_mul:mod_pro_mul_id_prod,mod_productos_pestana:mod_pro_pes_pro_id,mod_productos_rel:mod_prod_rel_prod_id',	'modulos/productos/productos.adm.php',	'icn-box-o ',	'#2d9ee0',	0,	0,	1),
(11,	'Configuraciones EC',	'',	'config-ec',	'mod_productos_conf',	'mod_prod_conf_',	'',	'modulos/config-ec/config-ec.adm.php',	'icn-conf ',	'#e83759',	0,	0,	1),
(12,	'Multimedia',	'',	'multimedia',	'multimedia',	'mul_',	'multimedia_categoria:mul_cat_mul_id',	'modulos/multimedia/multimedia.adm.php',	'icn-media color-text-rojo-b',	'#E83759',	0,	0,	1),
(13,	'Notas',	'Modulo informativo, para sitios e intranet',	'noticias',	'noticia',	'not_',	'noticia_categoria:not_cat_not_id,noticia_multimedia:not_mul_not_id,noticia_valor:not_val_not_id',	'modulos/noticias/noticias.adm.php',	'icn-newspaper color-text-naranja-a',	'#f39333',	0,	0,	1),
(14,	'Configuración Noticias',	'',	'config-noticias',	'',	'',	'',	'modulos/noticias/noticias-config.adm.php',	'icn-conf ',	'#eb5c43',	0,	0,	1),
(15,	'Documentos',	'',	'documentos',	'documento',	'doc_',	'documento_categoria:doc_cat_doc_id',	'modulos/documentos/documentos.adm.php',	'icn-folder',	'#00bdc6',	0,	0,	1),
(16,	'Kardex',	'',	'karex',	'mod_kardex',	'mod_krk_',	'',	'modulos/rrhh/kardex.adm.php',	'icn-kardex',	'#806aad',	0,	0,	1),
(17,	'Marcas',	'',	'marcas',	'mod_marcas',	'mod_mar_',	'',	'modulos/productos/marcas.adm.php',	'icn-marca color-text-verde-a',	'#24aa5b',	0,	0,	1),
(18,	'Inventario',	'',	'',	'mod_inventario',	'mod_inv_',	'',	'modulos/rrhh/inventario.adm.php',	'icn-inventary',	'#333333',	0,	0,	1),
(19,	'Pedidos almacen',	'Cafeteria y Papeleria',	'',	'mod_pedidos',	'mod_ped_',	'',	'modulos/rrhh/pedido.adm.php',	'icn-order ',	'#00bdc6',	0,	0,	1),
(20,	'Calendarios',	'',	'calendarios',	'calendario',	'cal_',	'calendario_categoria:cal_cat_cal_id, calendario_grupo:cal_grp_cal_id',	'modulos/calendarios/calendario.adm.php',	'icn-calendar',	'#e83759',	0,	0,	1),
(21,	'Configuración Catálogo ',	'',	'',	'',	'',	'',	'modulos/productos/config-catalogo.adm.php',	'icn-conf',	'#e71882',	0,	0,	1),
(22,	'Empresas',	'',	'',	'empresa',	'emp_',	'empresa_categoria:emp_cat_emp_id',	'modulos/adm/empresas.adm.php',	'icn-apartament',	'#0076ff',	0,	0,	1),
(23,	'Eventos',	'',	'',	'eventos_',	'eve_',	'',	'modulos/eventos/evento.adm.php',	'icn-calendar-ok',	'#eb5c43',	0,	0,	1),
(24,	'Solicitud de Permiso Fuera de oficina',	'',	'solicitud-permiso-fuera-oficina',	'',	'',	'',	'modulos/solicitud_permiso/solicitud_permiso.adm.php',	'icn-order-ok',	'#c2975c',	0,	0,	1),
(25,	'Enlaces',	'',	'enlaces',	'enlaces',	'enl_',	'enlaces_categorias:enl_cat_enl_id,enlaces_grupo_usuario:enl_grup_usu_enl_id,enlaces_publicaciones:enl_pub_enl_id',	'modulos/',	'icn-link',	'#806aad',	0,	0,	1),
(26,	'Sucursales',	'',	'sucursales',	'',	'',	'',	'modulos/productos/stock.adm.php',	'icn-shop',	'#e71882',	1,	0,	1);

DROP TABLE IF EXISTS `modulos_categoria`;
CREATE TABLE `modulos_categoria` (
  `modulos_mod_id` int(11) NOT NULL,
  `categoria_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`modulos_mod_id`,`categoria_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `modulos_categoria` (`modulos_mod_id`, `categoria_cat_id`) VALUES
(9,	20),
(9,	21),
(9,	22),
(9,	23),
(9,	24),
(9,	56),
(9,	58),
(9,	85),
(9,	103),
(9,	105),
(22,	32);

DROP TABLE IF EXISTS `mod_almacen`;
CREATE TABLE `mod_almacen` (
  `alm_id` int(11) NOT NULL AUTO_INCREMENT,
  `alm_nombre` varchar(255) NOT NULL,
  `alm_descripcion` varchar(255) NOT NULL,
  `alm_cant_min` int(11) NOT NULL,
  `alm_imagen` varchar(255) NOT NULL,
  `alm_costo_unit` float NOT NULL,
  `alm_activar` int(11) NOT NULL,
  `alm_usuario` int(11) NOT NULL,
  `alm_id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`alm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_cats`;
CREATE TABLE `mod_cats` (
  `cts_id` int(11) NOT NULL AUTO_INCREMENT,
  `cts_nombre` varchar(50) NOT NULL,
  `cts_email` varchar(150) NOT NULL,
  `cts_encargado` varchar(150) NOT NULL,
  `cts_zona` varchar(20) NOT NULL,
  `cts_direccion` varchar(255) NOT NULL,
  `cts_telefono` varchar(20) NOT NULL,
  `cts_celular` varchar(20) NOT NULL,
  `cts_activar` int(11) NOT NULL,
  `cts_id_usuario` int(11) NOT NULL,
  `cts_id_roles` int(11) NOT NULL,
  PRIMARY KEY (`cts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_clientes`;
CREATE TABLE `mod_clientes` (
  `mod_cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_cli_nombre` varchar(150) NOT NULL,
  `mod_cli_email` varchar(150) NOT NULL,
  `mod_cli_telefono` varchar(50) NOT NULL,
  `mod_cli_nit` varchar(50) NOT NULL,
  `mod_cli_razon_social` varchar(100) NOT NULL,
  `mod_cli_id_facebook` varchar(50) NOT NULL,
  `mod_cli_foto_facebook` varchar(255) NOT NULL,
  `mod_cli_password` varchar(50) NOT NULL,
  `mod_cli_estado` int(11) NOT NULL,
  `mod_cli_fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`mod_cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_clientes_estados`;
CREATE TABLE `mod_clientes_estados` (
  `mod_cli_est_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_cli_est_nombre` varchar(100) NOT NULL,
  `mod_cli_est_descripcion` tinytext NOT NULL,
  `mod_cli_est_icon` varchar(200) NOT NULL,
  `mod_cli_est_color` varchar(200) NOT NULL,
  `mod_cli_esta_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_cli_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_kardex`;
CREATE TABLE `mod_kardex` (
  `mod_kdx_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_nombre` varchar(255) NOT NULL,
  `mod_kdx_apellido_paterno` varchar(255) NOT NULL,
  `mod_kdx_apellido_materno` varchar(255) NOT NULL,
  `mod_kdx_identificacion` varchar(255) NOT NULL,
  `mod_kdx_extension` varchar(255) NOT NULL,
  `mod_kdx_fecha_vencimiento_identificacion` date NOT NULL,
  `mod_kdx_fecha_vencimiento_licencia_conducir` date NOT NULL,
  `mod_kdx_fecha_nacimiento` date NOT NULL,
  `mod_kdx_nacionalidad` varchar(255) NOT NULL,
  `mod_kdx_lugar_nacimiento` varchar(255) NOT NULL,
  `mod_kdx_sexo` int(11) NOT NULL,
  `mod_kdx_estado_civil` int(11) NOT NULL,
  `mod_kdx_nombre_esp` varchar(150) NOT NULL,
  `mod_kdx_formacion_esp` varchar(150) NOT NULL,
  `mod_kdx_trabajo_esp` varchar(255) NOT NULL,
  `mod_kdx_fecha_nac_esp` date NOT NULL,
  `mod_kdx_telefono_domicilio` varchar(255) NOT NULL,
  `mod_kdx_telefono_corporativo` varchar(255) NOT NULL,
  `mod_kdx_telefono_corporativo_ext` int(11) NOT NULL,
  `mod_kdx_celular_personal` varchar(255) NOT NULL,
  `mod_kdx_celular_corporativo` varchar(255) NOT NULL,
  `mod_kdx_email_personal` varchar(255) NOT NULL,
  `mod_kdx_email_corporativo` varchar(255) NOT NULL,
  `mod_kdx_direccion_domicilio` varchar(255) NOT NULL,
  `mod_kdx_coordenadas_domicilio` varchar(255) NOT NULL,
  `mod_kdx_nro_afiliacion_cns` varchar(255) NOT NULL,
  `mod_kdx_nro_afp` varchar(255) NOT NULL,
  `mod_kdx_afp` int(11) NOT NULL,
  `mod_kdx_talla_camisa` varchar(255) NOT NULL,
  `mod_kdx_talla_pantalon` varchar(255) NOT NULL,
  `mod_kdx_talla_botines` varchar(255) NOT NULL,
  `mod_kdx_tipo_sangre` varchar(255) NOT NULL,
  `mod_kdx_empresa_actual` int(11) NOT NULL,
  `mod_kdx_division` int(11) NOT NULL,
  `mod_kdx_cargo` int(11) NOT NULL,
  `mod_kdx_departamento` int(11) NOT NULL,
  `mod_kdx_fecha_ingreso` date NOT NULL,
  `mod_kdx_fecha_retiro` date NOT NULL,
  `mod_kdx_antiguedad` int(11) NOT NULL,
  `mod_kdx_codigo_sap` int(11) NOT NULL,
  `mod_kdx_manual_funciones` int(11) NOT NULL,
  `mod_kdx_formato_contrato` int(11) NOT NULL,
  `mod_kdx_cargo_act` int(11) NOT NULL,
  `mod_kdx_cargo_ant` int(11) NOT NULL,
  `mod_kdx_abono_sueldo` varchar(50) NOT NULL,
  `mod_kdx_curriculum` varchar(255) NOT NULL,
  `mod_kdx_nivel_edu` int(11) NOT NULL,
  `mod_kdx_institucion_edu` varchar(150) NOT NULL,
  `mod_kdx_titulo` varchar(255) NOT NULL,
  `mod_kdx_fecha_titulo` varchar(150) NOT NULL,
  `mod_kdx_empresa_ant` varchar(255) NOT NULL,
  `mod_kdx_cargo_emp_ant` varchar(255) NOT NULL,
  `mod_kdx_fecha_ing_emp_ant` date NOT NULL,
  `mod_kdx_fecha_sal_emp_ant` date NOT NULL,
  `mod_kdx_antiguedad_emp_ant` int(11) NOT NULL,
  `mod_kdx_imagen` varchar(255) NOT NULL,
  `mod_kdx_id_usuario` int(11) NOT NULL,
  `mod_kdx_activar` int(11) NOT NULL,
  `mod_kdx_papelera` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_kardex_bancos`;
CREATE TABLE `mod_kardex_bancos` (
  `mod_kdx_bnc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_bnc_nombre` int(11) NOT NULL,
  `mod_kdx_bnc_nro_cuenta` varchar(150) NOT NULL,
  `mod_kdx_bnc_moneda` int(11) NOT NULL,
  `mod_kdx_bnc_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_bnc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_cargo`;
CREATE TABLE `mod_kardex_cargo` (
  `mod_kdx_car_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_car_nombre` varchar(50) NOT NULL,
  `mod_kdx_car_descripcion` varchar(255) NOT NULL,
  `mod_kdx_car_atribuciones` varchar(255) NOT NULL,
  `mod_kdx_car_responsabilidades` varchar(255) NOT NULL,
  `mod_kdx_car_dependiente` int(11) NOT NULL,
  `mod_kdx_car_ascendencia` int(11) NOT NULL,
  `mod_kdx_car_destrezas` varchar(255) NOT NULL,
  `mod_kdx_car_lugar_de_trabajo` varchar(255) NOT NULL,
  `mod_kdx_car_requisitos` varchar(255) NOT NULL,
  `mod_kdx_car_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_cargo` (`mod_kdx_car_id`, `mod_kdx_car_nombre`, `mod_kdx_car_descripcion`, `mod_kdx_car_atribuciones`, `mod_kdx_car_responsabilidades`, `mod_kdx_car_dependiente`, `mod_kdx_car_ascendencia`, `mod_kdx_car_destrezas`, `mod_kdx_car_lugar_de_trabajo`, `mod_kdx_car_requisitos`, `mod_kdx_car_activar`) VALUES
(1,	'Gerente General',	'descripción',	'atr',	'res',	0,	0,	'des',	'Local',	'req',	1);

DROP TABLE IF EXISTS `mod_kardex_departamento`;
CREATE TABLE `mod_kardex_departamento` (
  `mod_kdx_dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_dep_nombre` varchar(255) NOT NULL,
  `mod_kdx_dep_descripcion` text NOT NULL,
  `mod_kdx_dep_id_padre` int(11) NOT NULL,
  `mod_kdx_dep_orden` int(11) NOT NULL,
  `mod_kdx_dep_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_departamento` (`mod_kdx_dep_id`, `mod_kdx_dep_nombre`, `mod_kdx_dep_descripcion`, `mod_kdx_dep_id_padre`, `mod_kdx_dep_orden`, `mod_kdx_dep_activar`) VALUES
(1,	'Gerente General',	'descripción',	0,	0,	1),
(2,	'Finanzas',	'',	1,	1,	1);

DROP TABLE IF EXISTS `mod_kardex_division`;
CREATE TABLE `mod_kardex_division` (
  `mod_kdx_div_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_div_nombre` varchar(255) NOT NULL,
  `mod_kdx_div_descripcion` text NOT NULL,
  `mod_kdx_div_activar` int(1) NOT NULL,
  PRIMARY KEY (`mod_kdx_div_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_division` (`mod_kdx_div_id`, `mod_kdx_div_nombre`, `mod_kdx_div_descripcion`, `mod_kdx_div_activar`) VALUES
(1,	'División Agrícola',	'descripción',	1);

DROP TABLE IF EXISTS `mod_kardex_empresa`;
CREATE TABLE `mod_kardex_empresa` (
  `mod_kdx_emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_emp_nombre` varchar(255) NOT NULL,
  `mod_kdx_emp_descripcion` varchar(255) NOT NULL,
  `mod_kdx_emp_logo` varchar(255) NOT NULL,
  `mod_kdx_emp_razon_social` varchar(255) NOT NULL,
  `mod_kdx_emp_nit` varchar(255) NOT NULL,
  `mod_kdx_emp_direccion` varchar(255) NOT NULL,
  `mod_kdx_emp_coordenadas` varchar(255) NOT NULL,
  `mod_kdx_emp_rubro` varchar(255) NOT NULL,
  `mod_kdx_emp_email` varchar(255) NOT NULL,
  `mod_kdx_emp_web` varchar(255) NOT NULL,
  `mod_kdx_emp_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_formacion`;
CREATE TABLE `mod_kardex_formacion` (
  `mod_kdx_frm_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_frm_nombre` varchar(255) NOT NULL,
  `mod_kdx_frm_institucion` varchar(150) NOT NULL,
  `mod_kdx_frm_fecha` varchar(150) NOT NULL,
  `mod_kdx_frm_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_frm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_hijos`;
CREATE TABLE `mod_kardex_hijos` (
  `mod_kdx_hj_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_hj_nombre` varchar(255) NOT NULL,
  `mod_kdx_hj_inst_educativa` varchar(255) NOT NULL,
  `mod_kdx_hj_fecha_nac` date NOT NULL,
  `mod_kdx_hj_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_hj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_historial_corporativo`;
CREATE TABLE `mod_kardex_historial_corporativo` (
  `mod_kdx_his_corp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_his_corp_empresa` int(11) NOT NULL,
  `mod_kdx_his_corp_fecha_ingreso` date NOT NULL,
  `mod_kdx_his_corp_fecha_salida` date NOT NULL,
  `mod_kdx_his_corp_cargo` int(11) NOT NULL,
  `mod_kdx_his_corp_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_his_corp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_manual_funciones`;
CREATE TABLE `mod_kardex_manual_funciones` (
  `mod_kdx_mf_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_mf_nombre` varchar(50) NOT NULL,
  `mod_kdx_mf_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_kdx_mf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_referencias`;
CREATE TABLE `mod_kardex_referencias` (
  `mod_kardex_ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kardex_ref_nombre` varchar(150) NOT NULL,
  `mod_kardex_ref_telefono` varchar(50) NOT NULL,
  `mod_kardex_ref_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kardex_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_ref_emergencia`;
CREATE TABLE `mod_kardex_ref_emergencia` (
  `mod_kdx_ref_emg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_ref_emg_nombre` varchar(255) NOT NULL,
  `mod_kdx_ref_emg_parentesco` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_telefono` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_ref_emg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_marcas`;
CREATE TABLE `mod_marcas` (
  `mod_mar_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_mar_nombre` varchar(255) NOT NULL,
  `mod_mar_ruta_amigable` varchar(255) NOT NULL,
  `mod_mar_imagen` varchar(255) NOT NULL,
  `mod_mar_usuario` int(11) NOT NULL,
  `mod_mar_detalle` text NOT NULL,
  `mod_mar_id_dominio` int(11) NOT NULL,
  `mod_mar_activar` int(1) NOT NULL,
  PRIMARY KEY (`mod_mar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_marcas_categorias`;
CREATE TABLE `mod_marcas_categorias` (
  `mod_mar_cat_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_cat_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_marcas_productos`;
CREATE TABLE `mod_marcas_productos` (
  `mod_mar_prod_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_clientes`;
CREATE TABLE `mod_pedidos_clientes` (
  `mod_ped_cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_cli_id_cli` int(11) NOT NULL,
  `mod_ped_cli_tipo` int(11) NOT NULL,
  `mod_ped_cli_sucursal` int(11) NOT NULL,
  `mod_ped_cli_nro` int(11) NOT NULL,
  `mod_ped_cli_fecha_registro` datetime NOT NULL,
  `mod_ped_cli_fecha_aprovacion` datetime NOT NULL,
  `mod_ped_cli_fecha_entrega` datetime NOT NULL,
  `mod_ped_cli_estado` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_estados`;
CREATE TABLE `mod_pedidos_estados` (
  `mod_ped_est_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_est_nombre` varchar(100) NOT NULL,
  `mod_ped_est_descripcion` tinytext NOT NULL,
  `mod_ped_est_icon` varchar(50) NOT NULL,
  `mod_ped_est_color` varchar(11) NOT NULL,
  `mod_ped_accion_email` varchar(11) NOT NULL,
  `mod_ped_accion_email_plantilla` varchar(11) NOT NULL,
  `mod_ped_accion_entrega` varchar(11) NOT NULL,
  `mod_ped_accion_facturacion` varchar(11) NOT NULL,
  `mod_ped_est_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_pedidos_productos`;
CREATE TABLE `mod_pedidos_productos` (
  `mod_ped_prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_prod_ped_id` int(11) NOT NULL,
  `mod_ped_prod_prod_id` int(11) NOT NULL,
  `mod_ped_prod_precio_unidad` int(11) NOT NULL,
  `mod_ped_prod_cantidad` int(11) NOT NULL,
  `mod_ped_prod_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_sucursales`;
CREATE TABLE `mod_pedidos_sucursales` (
  `mod_ped_suc_mod_ped_id` int(11) NOT NULL,
  `mod_ped_suc_mod_suc_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_tipo`;
CREATE TABLE `mod_pedidos_tipo` (
  `mod_ped_tipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_tipo_nombre` varchar(100) NOT NULL,
  `mod_ped_tipo_ruta_amigable` varchar(100) NOT NULL,
  `mod_ped_tipo_descripcion` tinytext NOT NULL,
  `mod_ped_tipo_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_pedidos_zonas_distribucion`;
CREATE TABLE `mod_pedidos_zonas_distribucion` (
  `mod_ped_zod_mod_ped_id` int(11) NOT NULL,
  `mod_ped_zod_mod_zod_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_productos`;
CREATE TABLE `mod_productos` (
  `mod_prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_prod_nombre` varchar(255) NOT NULL,
  `mod_prod_ruta_amigable` varchar(255) NOT NULL,
  `mod_prod_tags` varchar(255) NOT NULL,
  `mod_prod_codigo` varchar(255) NOT NULL,
  `mod_prod_sap` varchar(30) NOT NULL,
  `mod_prod_modelo` varchar(255) NOT NULL,
  `mod_prod_resumen` text NOT NULL,
  `mod_prod_detalles` text NOT NULL,
  `mod_prod_especificaciones` text NOT NULL,
  `mod_prod_disponibilidad` int(11) NOT NULL DEFAULT '0',
  `mod_prod_imagen` varchar(255) NOT NULL DEFAULT 'images/producto_default.png',
  `mod_prod_precio` varchar(255) NOT NULL,
  `mod_prod_id_marca` int(11) NOT NULL,
  `mod_prod_id_doc` varchar(45) NOT NULL,
  `mod_prod_id_mul` int(11) NOT NULL,
  `mod_prod_id_dominio` int(11) NOT NULL,
  `mod_prod_activar` int(11) NOT NULL DEFAULT '0',
  `mod_prod_activar_cat` int(11) NOT NULL DEFAULT '1',
  `mod_prod_json` varchar(255) NOT NULL,
  `mod_prod_precio_detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_prod_id`),
  FULLTEXT KEY `busqueda` (`mod_prod_nombre`,`mod_prod_tags`,`mod_prod_detalles`,`mod_prod_especificaciones`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `mod_productos` (`mod_prod_id`, `mod_prod_nombre`, `mod_prod_ruta_amigable`, `mod_prod_tags`, `mod_prod_codigo`, `mod_prod_sap`, `mod_prod_modelo`, `mod_prod_resumen`, `mod_prod_detalles`, `mod_prod_especificaciones`, `mod_prod_disponibilidad`, `mod_prod_imagen`, `mod_prod_precio`, `mod_prod_id_marca`, `mod_prod_id_doc`, `mod_prod_id_mul`, `mod_prod_id_dominio`, `mod_prod_activar`, `mod_prod_activar_cat`, `mod_prod_json`, `mod_prod_precio_detalle`) VALUES
(233,	'Pan Caspa',	'pan-caspa',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/77.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(234,	'Pan de Panchito',	'pan-de-panchito',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/57.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(235,	'torta 1',	'torta-1',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0001.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(236,	'torta 2',	'torta-2',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0002.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(237,	'dulces 1',	'dulces-1',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0003.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(238,	'producto 4',	'producto-4',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0004.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(239,	'producto 5',	'producto-5',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0005.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(240,	'producto 6',	'producto-6',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0007.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(241,	'producto 7',	'producto-7',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0009.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(242,	'producto 8',	'producto-8',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0010.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(243,	'producto 9',	'producto-9',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0011.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(244,	'producto 10',	'producto-10',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0012.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(245,	'producto 11',	'producto-11',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0013.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(246,	'producto 11',	'producto-11',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0014.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(247,	'producto 12',	'producto-12',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0015.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(248,	'producto 13',	'producto-13',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0016.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(249,	'producto 14',	'producto-14',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0017.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(250,	'producto 15',	'producto-15',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0020.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(251,	'producto 16',	'producto-16',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0021.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(252,	'producto 17',	'producto-17',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0022.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(253,	'producto 18',	'producto-18',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0023.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(254,	'producto 19',	'producto-19',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0026.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(255,	'producto 20',	'producto-20',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0027.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(256,	'producto 21',	'producto-2',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0030.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(257,	'producto 22',	'producto-22',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0031.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(258,	'producto 23',	'producto-23',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0032.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(259,	'producto 24',	'producto-24',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0034.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(260,	'producto 25',	'producto-25',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0035.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(261,	'producto 26',	'produc',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0037.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(262,	'producto 27',	'producto-27',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0038.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(263,	'producto 28',	'producto-28',	'',	'',	'0',	'',	'',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0039.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(264,	'producto 29',	'producto-29',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0040.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(265,	'producto 29',	'producto-29',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0041.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(266,	'producto 30',	'producto-30',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0042.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(267,	'producto 31',	'producto-31',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0043.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(268,	'producto 32',	'producto-32',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0044.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(269,	'productos 33',	'productos-33',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0045.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(270,	'producto 34',	'producto-34',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0047.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(271,	'producto 25',	'producto-25',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0048.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(272,	'producto 26',	'producto-26',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0049.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(273,	'producto 27',	'producto-27',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0050.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(274,	'producto 28',	'producto-28',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0051.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(275,	'producto 29',	'producto-29',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0052.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(276,	'producto 30',	'producto-30',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0053.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(277,	'producto 31',	'producto-31',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0054.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(278,	'producto 32',	'producto-32',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0055.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(279,	'producto 33',	'producto-33',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0056.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(280,	'producto 34',	'producto-34',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0057.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(281,	'producto 35',	'producto-35',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0058.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(282,	'producto 36',	'producto-36',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0059.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(283,	'producto 37',	'producto-37',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0060.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(284,	'producto 38',	'producto-38',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0061.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(285,	'producto 35',	'producto-35',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0062.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(286,	'producto 36',	'producto-36',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0063.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(287,	'producto 37',	'producto-37',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0064.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(288,	'producto 38',	'producto-3',	'',	'',	'0',	'',	'',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0065.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(289,	'producto 39',	'producto-39',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0066.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(290,	'producto 40',	'producto-40',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0067.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(291,	'producto 41',	'producto-41',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0068.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(292,	'producto 42',	'producto-42',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0070.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(293,	'producto 43',	'producto-43',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0071.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(294,	'producto 43',	'producto-43',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0072.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(295,	'producto 44',	'producto',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0073.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(296,	'producto 44',	'producto-44',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0074.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(297,	'producto 45',	'producto-45',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0075.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(298,	'producto 46',	'producto-46',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0076.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(299,	'producto 47',	'producto-47',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0077.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(300,	'producto 48',	'produ',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0078.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(301,	'producto 49',	'producto-49',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0079.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(302,	'producto 50',	'producto-50',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0080.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(303,	'producto 51',	'producto-51',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0081.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(304,	'producto 51',	'producto-51',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0082.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	''),
(305,	'producto 53',	'producto-53',	'',	'',	'0',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',	'',	'',	0,	'sitios/victoria/archivos/productos/img_0083.jpg',	'',	0,	'',	0,	0,	1,	1,	'',	'');

DROP TABLE IF EXISTS `mod_productos_catalogos`;
CREATE TABLE `mod_productos_catalogos` (
  `mod_prod_catg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_prod_catg_nombre` varchar(100) NOT NULL,
  `mod_prod_catg_descripcion` text NOT NULL,
  `mod_prod_catg_ruta_amigable` varchar(150) NOT NULL,
  `mod_prod_catg_orden` int(11) NOT NULL,
  `mod_prod_catg_id_padre` int(11) NOT NULL DEFAULT '0',
  `mod_prod_catg_id_empresa` int(11) NOT NULL,
  `mod_prod_catg_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_prod_catg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_categorias`;
CREATE TABLE `mod_productos_categorias` (
  `mod_prod_cat_cat_id` int(50) NOT NULL,
  `mod_prod_cat_prod_id` int(50) NOT NULL,
  `mod_prod_cat_orden` int(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_productos_catg_cat`;
CREATE TABLE `mod_productos_catg_cat` (
  `mod_prod_catg_cat_catg_id` int(11) NOT NULL,
  `mod_prod_catg_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`mod_prod_catg_cat_catg_id`,`mod_prod_catg_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_catg_rol`;
CREATE TABLE `mod_productos_catg_rol` (
  `mod_prod_catg_rol_catg_id` int(11) NOT NULL,
  `mod_prod_catg_rol_rol_id` int(11) NOT NULL,
  PRIMARY KEY (`mod_prod_catg_rol_catg_id`,`mod_prod_catg_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_conf`;
CREATE TABLE `mod_productos_conf` (
  `mod_prod_conf_codigo` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_sap` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_modelo` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_avanzado_img` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_detalles` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_especificaciones` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_disponibilidad` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_marca` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_precio` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_precio_detalle` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_docs` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_multimedia` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_pestana` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_json` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_mul`;
CREATE TABLE `mod_productos_mul` (
  `mod_pro_mul_id_prod_mul` int(11) NOT NULL AUTO_INCREMENT,
  `mod_pro_mul_id_prod` int(11) NOT NULL,
  `mod_pro_mul_ruta` varchar(250) NOT NULL,
  `mod_pro_mul_dominio` int(11) NOT NULL,
  PRIMARY KEY (`mod_pro_mul_id_prod_mul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `mod_productos_pestana`;
CREATE TABLE `mod_productos_pestana` (
  `mod_pro_pes_pro_id` int(11) NOT NULL,
  `mod_pro_pes_pes_id` int(11) NOT NULL,
  `mod_pro_pes_contenido` text NOT NULL,
  `mod_pro_pes_orden` int(11) NOT NULL,
  PRIMARY KEY (`mod_pro_pes_pro_id`,`mod_pro_pes_pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_rel`;
CREATE TABLE `mod_productos_rel` (
  `mod_prod_rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_prod_rel_prod_id` int(11) NOT NULL,
  `mod_prod_rel_cat_id` int(11) NOT NULL,
  `mod_prod_rel_doc_id` int(11) NOT NULL,
  `mod_prod_rel_mul_id` int(11) NOT NULL,
  `mod_prod_rel_mar_id` int(11) NOT NULL,
  `mod_prod_rel_orden` int(11) NOT NULL,
  PRIMARY KEY (`mod_prod_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `mod_productos_rel` (`mod_prod_rel_id`, `mod_prod_rel_prod_id`, `mod_prod_rel_cat_id`, `mod_prod_rel_doc_id`, `mod_prod_rel_mul_id`, `mod_prod_rel_mar_id`, `mod_prod_rel_orden`) VALUES
(1,	233,	85,	0,	0,	0,	0),
(2,	234,	85,	0,	0,	0,	0),
(6,	235,	86,	0,	0,	0,	0),
(7,	236,	86,	0,	0,	0,	0),
(8,	237,	87,	0,	0,	0,	0),
(9,	238,	87,	0,	0,	0,	0),
(10,	239,	87,	0,	0,	0,	0),
(11,	240,	87,	0,	0,	0,	0),
(12,	241,	87,	0,	0,	0,	0),
(13,	242,	84,	0,	0,	0,	0),
(14,	243,	84,	0,	0,	0,	0),
(15,	244,	86,	0,	0,	0,	0),
(16,	245,	85,	0,	0,	0,	0),
(17,	246,	85,	0,	0,	0,	0),
(18,	247,	85,	0,	0,	0,	0),
(19,	248,	85,	0,	0,	0,	0),
(20,	249,	86,	0,	0,	0,	0),
(21,	250,	86,	0,	0,	0,	0),
(22,	251,	86,	0,	0,	0,	0),
(24,	253,	86,	0,	0,	0,	0),
(25,	252,	86,	0,	0,	0,	0),
(26,	254,	86,	0,	0,	0,	0),
(27,	255,	86,	0,	0,	0,	0),
(28,	256,	86,	0,	0,	0,	0),
(29,	257,	88,	0,	0,	0,	0),
(30,	258,	88,	0,	0,	0,	0),
(31,	259,	85,	0,	0,	0,	0),
(32,	260,	85,	0,	0,	0,	0),
(33,	261,	85,	0,	0,	0,	0),
(34,	262,	84,	0,	0,	0,	0),
(35,	263,	85,	0,	0,	0,	0),
(36,	264,	85,	0,	0,	0,	0),
(37,	265,	85,	0,	0,	0,	0),
(38,	266,	88,	0,	0,	0,	0),
(39,	267,	87,	0,	0,	0,	0),
(40,	268,	84,	0,	0,	0,	0),
(41,	269,	86,	0,	0,	0,	0),
(42,	270,	85,	0,	0,	0,	0),
(43,	271,	86,	0,	0,	0,	0),
(44,	272,	86,	0,	0,	0,	0),
(45,	273,	86,	0,	0,	0,	0),
(46,	274,	86,	0,	0,	0,	0),
(47,	275,	86,	0,	0,	0,	0),
(49,	277,	86,	0,	0,	0,	0),
(50,	276,	87,	0,	0,	0,	0),
(51,	278,	86,	0,	0,	0,	0),
(53,	280,	85,	0,	0,	0,	0),
(54,	279,	86,	0,	0,	0,	0),
(55,	281,	85,	0,	0,	0,	0),
(56,	282,	85,	0,	0,	0,	0),
(57,	283,	85,	0,	0,	0,	0),
(58,	284,	85,	0,	0,	0,	0),
(59,	285,	85,	0,	0,	0,	0),
(60,	286,	85,	0,	0,	0,	0),
(61,	287,	84,	0,	0,	0,	0),
(62,	288,	86,	0,	0,	0,	0),
(63,	289,	86,	0,	0,	0,	0),
(64,	290,	87,	0,	0,	0,	0),
(65,	291,	87,	0,	0,	0,	0),
(66,	292,	86,	0,	0,	0,	0),
(67,	293,	86,	0,	0,	0,	0),
(68,	294,	86,	0,	0,	0,	0),
(69,	295,	86,	0,	0,	0,	0),
(70,	296,	87,	0,	0,	0,	0),
(71,	297,	87,	0,	0,	0,	0),
(72,	298,	87,	0,	0,	0,	0),
(73,	299,	87,	0,	0,	0,	0),
(74,	300,	86,	0,	0,	0,	0),
(75,	301,	86,	0,	0,	0,	0),
(76,	302,	87,	0,	0,	0,	0),
(77,	303,	86,	0,	0,	0,	0),
(78,	304,	86,	0,	0,	0,	0),
(79,	305,	86,	0,	0,	0,	0);

DROP TABLE IF EXISTS `mod_stock`;
CREATE TABLE `mod_stock` (
  `mod_stk_prod` int(11) NOT NULL,
  `mod_stk_suc` int(11) NOT NULL,
  `mod_stk_cantidad` int(11) NOT NULL,
  `mod_stk_fecha` datetime NOT NULL,
  `mod_stk_fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`mod_stk_prod`,`mod_stk_suc`,`mod_stk_fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_sucursales`;
CREATE TABLE `mod_sucursales` (
  `mod_suc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_suc_nombre` varchar(50) NOT NULL,
  `mod_suc_direccion` varchar(150) NOT NULL,
  `mod_suc_telefono` varchar(100) NOT NULL,
  `mod_suc_coordenadas` varchar(50) NOT NULL,
  `mod_suc_activar` int(11) NOT NULL,
  `mod_suc_correo` varchar(150) NOT NULL,
  PRIMARY KEY (`mod_suc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `multimedia`;
CREATE TABLE `multimedia` (
  `mul_id` int(11) NOT NULL AUTO_INCREMENT,
  `mul_nombre` varchar(255) NOT NULL,
  `mul_tags` varchar(500) NOT NULL,
  `mul_url_archivo` varchar(255) NOT NULL,
  `mul_ruta_amigable` varchar(255) NOT NULL,
  `mul_url` varchar(255) NOT NULL,
  `mul_destino` varchar(10) NOT NULL DEFAULT '_self',
  `mul_embed` text NOT NULL,
  `mul_tipo_archivo` varchar(255) NOT NULL,
  `mul_leyenda` varchar(255) NOT NULL,
  `mul_texto_alternativo` varchar(255) NOT NULL,
  `mul_descripcion` text NOT NULL,
  `mul_dimension` varchar(255) NOT NULL,
  `mul_tamano` varchar(255) NOT NULL,
  `mul_fecha` datetime NOT NULL,
  `mul_usuario` int(11) NOT NULL,
  `mul_id_dominio` int(11) NOT NULL DEFAULT '0',
  `mul_activar` int(11) NOT NULL,
  PRIMARY KEY (`mul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `multimedia` (`mul_id`, `mul_nombre`, `mul_tags`, `mul_url_archivo`, `mul_ruta_amigable`, `mul_url`, `mul_destino`, `mul_embed`, `mul_tipo_archivo`, `mul_leyenda`, `mul_texto_alternativo`, `mul_descripcion`, `mul_dimension`, `mul_tamano`, `mul_fecha`, `mul_usuario`, `mul_id_dominio`, `mul_activar`) VALUES
(1,	'bg-1',	'',	'archivos/multimedia/bg-1.jpg',	'',	'archivos/multimedia/bg-1.jpg',	'',	'',	'jpeg',	'',	'',	'',	'1500 x 742',	'19 KB',	'2017-03-30 08:44:42',	1,	0,	1),
(2,	'bg-2',	'',	'archivos/multimedia/bg-2.jpg',	'',	'archivos/multimedia/bg-2.jpg',	'',	'',	'jpeg',	'',	'',	'',	'1500 x 742',	'15 KB',	'2017-03-30 09:13:28',	1,	0,	1),
(3,	'bg-3',	'',	'archivos/multimedia/bg-3.jpg',	'',	'',	'',	'',	'jpeg',	'',	'',	'',	'1500 x 742',	'17 KB',	'2017-03-30 09:13:05',	1,	0,	1);

DROP TABLE IF EXISTS `multimedia_categoria`;
CREATE TABLE `multimedia_categoria` (
  `mul_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `mul_cat_mul_id` int(11) NOT NULL,
  `mul_cat_cat_id` int(11) NOT NULL,
  `mul_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`mul_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `multimedia_categoria` (`mul_cat_id`, `mul_cat_mul_id`, `mul_cat_cat_id`, `mul_cat_orden`) VALUES
(1,	1,	1,	1),
(2,	3,	1,	2),
(3,	2,	1,	3);

DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `not_ruta_amigable` varchar(255) CHARACTER SET utf8 NOT NULL,
  `not_tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `not_resumen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `not_cuerpo` text CHARACTER SET utf8 NOT NULL,
  `not_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `not_fecha` datetime NOT NULL,
  `not_comentarios` int(11) NOT NULL DEFAULT '0' COMMENT '0 - no comentarios 1 - con comentarios',
  `not_usuario` int(11) NOT NULL,
  `not_activar` int(11) NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `noticia` (`not_id`, `not_titulo`, `not_ruta_amigable`, `not_tags`, `not_resumen`, `not_cuerpo`, `not_imagen`, `not_fecha`, `not_comentarios`, `not_usuario`, `not_activar`) VALUES
(1,	'FUNDARE participó  de la Feria del Medio  Ambiente',	'hola-mundo',	'',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',	'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptat<span style=\"background-color: rgb(255, 255, 0);\">e velit esse c</span>illum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Donec elementum ligula eu sapien consequat eleifend. Donec nec dolor erat, condimentum sagittis</p><p><br></p><p><br></p><p><br></p>',	'archivos/noticias/194_noticia.jpg',	'2016-11-24 09:42:00',	0,	1,	1),
(2,	'Reciclaje, práctica  incipiente en Bolivia',	'toyo-lider-en-baterias-en-bolivia',	'',	'Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit Sed\r\n',	'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Donec elementum ligula eu sapien consequat eleifend. Donec nec dolor<br></p>',	'archivos/noticias/cainco-santa-cruz-comenzo-a-reciclar-celulares-y-computadoras_636.jpg',	'2016-11-24 09:42:00',	0,	1,	1);

DROP TABLE IF EXISTS `noticia_categoria`;
CREATE TABLE `noticia_categoria` (
  `not_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_cat_not_id` int(11) NOT NULL,
  `not_cat_cat_id` int(11) NOT NULL,
  `not_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`not_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `noticia_categoria` (`not_cat_id`, `not_cat_not_id`, `not_cat_cat_id`, `not_cat_orden`) VALUES
(1,	1,	4,	0),
(2,	2,	4,	2);

DROP TABLE IF EXISTS `noticia_comentario`;
CREATE TABLE `noticia_comentario` (
  `not_com_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_com_not_id` int(11) NOT NULL,
  `not_com_com_id` int(11) NOT NULL,
  `not_com_padre_id` int(11) NOT NULL,
  `not_com_orden` int(11) NOT NULL,
  PRIMARY KEY (`not_com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `noticia_comentario` (`not_com_id`, `not_com_not_id`, `not_com_com_id`, `not_com_padre_id`, `not_com_orden`) VALUES
(1,	2,	1,	0,	1),
(2,	2,	2,	0,	2);

DROP TABLE IF EXISTS `noticia_multimedia`;
CREATE TABLE `noticia_multimedia` (
  `not_mul_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_mul_not_id` int(11) NOT NULL,
  `not_mul_ruta` varchar(250) NOT NULL,
  `not_mul_dominio` int(11) NOT NULL,
  PRIMARY KEY (`not_mul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `noticia_rel`;
CREATE TABLE `noticia_rel` (
  `not_rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_rel_not_id` int(11) NOT NULL,
  `not_rel_cat_id` int(11) NOT NULL,
  `not_rel_mul_id` int(11) NOT NULL,
  `not_rel_doc_id` int(11) NOT NULL,
  `not_rel_grupo_usuarios` int(11) NOT NULL,
  `not_rel_orden` int(11) NOT NULL,
  PRIMARY KEY (`not_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `noticia_rel` (`not_rel_id`, `not_rel_not_id`, `not_rel_cat_id`, `not_rel_mul_id`, `not_rel_doc_id`, `not_rel_grupo_usuarios`, `not_rel_orden`) VALUES
(10,	1,	4,	0,	0,	0,	0),
(11,	2,	4,	0,	0,	0,	0);

DROP TABLE IF EXISTS `noticia_valor`;
CREATE TABLE `noticia_valor` (
  `not_val_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_val_not_id` int(11) NOT NULL,
  `not_val_val_id` int(11) NOT NULL,
  PRIMARY KEY (`not_val_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_costo` varchar(50) NOT NULL,
  `ped_fecha_registro` datetime NOT NULL,
  `ped_fecha_aprobacion` datetime NOT NULL,
  `ped_fecha_entrega` datetime NOT NULL,
  `ped_id_cats` int(11) NOT NULL,
  `ped_id_usuario` int(11) NOT NULL,
  `ped_estado` int(11) NOT NULL COMMENT '0-Pendiente; 1-Aprobado; 2-Cancelado; 3:Entregado',
  PRIMARY KEY (`ped_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `pedido_almacen`;
CREATE TABLE `pedido_almacen` (
  `ped_alm_id_pedido` int(11) NOT NULL,
  `ped_alm_id_almacen` int(11) NOT NULL,
  `ped_alm_cantidad` int(11) NOT NULL,
  `ped_alm_unidad` varchar(50) NOT NULL,
  `ped_alm_observaciones` varchar(255) NOT NULL,
  PRIMARY KEY (`ped_alm_id_pedido`,`ped_alm_id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `pestana`;
CREATE TABLE `pestana` (
  `pes_id` int(11) NOT NULL AUTO_INCREMENT,
  `pes_nombre` varchar(150) NOT NULL,
  `pes_descripcion` varchar(255) NOT NULL,
  `pes_fecha` datetime NOT NULL,
  `pes_usuario` int(11) NOT NULL,
  `pes_activar` int(11) NOT NULL,
  PRIMARY KEY (`pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `planes`;
CREATE TABLE `planes` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `plan_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `plan_estado` int(11) NOT NULL COMMENT '0 no activo\n1 activo\n',
  `plan_nivel` varchar(45) CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE `plantilla` (
  `pla_id` int(11) NOT NULL AUTO_INCREMENT,
  `pla_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_ruta_amigable` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_icono` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_meta` text CHARACTER SET utf8 NOT NULL,
  `pla_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_clase` varchar(45) CHARACTER SET utf8 NOT NULL,
  `pla_codigos` text CHARACTER SET utf8 NOT NULL,
  `pla_tipo` int(11) NOT NULL DEFAULT '0',
  `pla_movil` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_onload` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pla_activar` int(11) NOT NULL,
  PRIMARY KEY (`pla_id`),
  KEY `pla_id` (`pla_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `plantilla` (`pla_id`, `pla_nombre`, `pla_ruta_amigable`, `pla_icono`, `pla_imagen`, `pla_meta`, `pla_css`, `pla_clase`, `pla_codigos`, `pla_tipo`, `pla_movil`, `pla_onload`, `pla_activar`) VALUES
(1,	'plantilla_1',	'p=1',	'sitios/landicorp/images/favicon.icon',	'',	'',	'',	'',	'',	0,	'',	'page_precarga();',	1),
(2,	'plantilla_2',	'p=2',	'',	'',	'',	'',	'',	'',	0,	'',	'',	1),
(3,	'plantilla_3',	'p=3',	'',	'',	'',	'',	'',	'',	0,	'',	'',	1);

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_texto` text NOT NULL,
  `post_id_usu_emisor` int(11) NOT NULL,
  `post_id_usu_receptor` int(11) NOT NULL,
  `post_fecha` datetime NOT NULL,
  `post_version` int(11) NOT NULL,
  `post_tipo` int(11) NOT NULL,
  `post_activar` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `printer`;
CREATE TABLE `printer` (
  `prit_id` int(11) NOT NULL AUTO_INCREMENT,
  `prit_accion` varchar(50) NOT NULL,
  `prit_id_aux` int(11) NOT NULL,
  `prit_id_suc` int(11) NOT NULL,
  `prit_fecha` datetime NOT NULL,
  `prit_estado` int(11) NOT NULL,
  `prit_txt` varchar(5) NOT NULL DEFAULT 'SEÑOR',
  PRIMARY KEY (`prit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `publicacion`;
CREATE TABLE `publicacion` (
  `pub_id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_descripcion` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_tipo` int(11) NOT NULL DEFAULT '0',
  `pub_archivo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_archivo_config` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pub_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_id_item` int(11) NOT NULL DEFAULT '0',
  `pub_numero` int(11) NOT NULL DEFAULT '0',
  `pub_id_cat` int(11) NOT NULL DEFAULT '0',
  `pub_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `publicacion` (`pub_id`, `pub_nombre`, `pub_descripcion`, `pub_imagen`, `pub_titulo`, `pub_tipo`, `pub_archivo`, `pub_archivo_config`, `pub_css`, `pub_clase`, `pub_id_item`, `pub_numero`, `pub_id_cat`, `pub_activar`) VALUES
(1,	'portada',	'',	'',	'',	1,	'modulos/portada.pub.php',	'',	'',	'',	0,	0,	0,	1),
(2,	'form_empresa_reciclaje',	'',	'',	'',	1,	'modulos/form-empresa-reciclaje.pub.php',	'',	'',	'',	0,	0,	0,	1),
(21,	'footer',	'',	'',	'',	1,	'modulos/footer.pub.php',	'',	'',	'',	0,	0,	0,	1),
(22,	'menu',	'',	'',	'',	1,	'modulos/nav.pub.php',	'',	'',	'',	0,	0,	0,	1),
(23,	'cotenido-cat',	'',	'',	'',	1,	'modulos/contenido.pub.php',	'',	'',	'',	0,	0,	0,	1),
(24,	'contacto',	'',	'',	'',	1,	'modulos/contacto.pub.php',	'',	'',	'',	0,	0,	0,	1),
(25,	'lista-empresas',	'',	'',	'',	1,	'modulos/lista-empresas.pub.php',	'',	'',	'',	0,	0,	0,	0),
(26,	'galeria',	'',	'',	'',	1,	'modulos/galeria.pub.php',	'',	'',	'',	0,	0,	0,	0),
(27,	'page-noticias',	'',	'',	'',	1,	'modulos/notas.pub.php',	'',	'',	'',	0,	0,	0,	0);

DROP TABLE IF EXISTS `publicacion_rel`;
CREATE TABLE `publicacion_rel` (
  `pubrel_id` int(11) NOT NULL AUTO_INCREMENT,
  `pubrel_cat_id` int(11) NOT NULL,
  `pubrel_pla_id` int(11) NOT NULL,
  `pubrel_cont_id` int(11) NOT NULL,
  `pubrel_pub_id` int(11) NOT NULL,
  `pubrel_activar` int(11) NOT NULL DEFAULT '0',
  `pubrel_orden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pubrel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `publicacion_rel` (`pubrel_id`, `pubrel_cat_id`, `pubrel_pla_id`, `pubrel_cont_id`, `pubrel_pub_id`, `pubrel_activar`, `pubrel_orden`) VALUES
(3,	1,	1,	3,	1,	1,	0),
(4,	1,	1,	5,	21,	1,	0),
(5,	3,	3,	3,	22,	1,	0),
(6,	3,	3,	3,	2,	1,	1),
(7,	3,	3,	5,	21,	1,	0),
(8,	3,	1,	3,	22,	1,	0),
(9,	3,	1,	3,	25,	1,	1),
(10,	3,	1,	5,	21,	1,	0),
(11,	2,	1,	3,	22,	1,	0),
(12,	2,	1,	3,	23,	1,	1),
(13,	2,	1,	5,	21,	1,	0),
(14,	16,	1,	3,	22,	1,	0),
(15,	16,	1,	3,	26,	1,	1),
(16,	16,	1,	5,	21,	1,	0),
(17,	7,	1,	3,	22,	1,	0),
(18,	7,	1,	3,	24,	1,	1),
(19,	7,	1,	5,	21,	1,	0),
(20,	4,	1,	1,	27,	1,	0),
(21,	4,	3,	2,	27,	1,	0);

DROP TABLE IF EXISTS `redireccion`;
CREATE TABLE `redireccion` (
  `red_id` int(11) NOT NULL AUTO_INCREMENT,
  `red_nombre` varchar(50) NOT NULL,
  `red_descripcion` varchar(150) NOT NULL,
  `red_url` varchar(255) NOT NULL,
  `red_activar` int(1) NOT NULL,
  PRIMARY KEY (`red_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `redireccion` (`red_id`, `red_nombre`, `red_descripcion`, `red_url`, `red_activar`) VALUES
(1,	'Actual',	'',	'dashboard',	1),
(2,	'Dashboard',	'',	'dashboard',	1),
(3,	'Intranet',	'',	'intranet',	1);

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_nombre` varchar(45) CHARACTER SET utf8 NOT NULL,
  `rol_funciones` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rol_redireccion` int(11) NOT NULL DEFAULT '1',
  `rol_id_padre` int(11) NOT NULL,
  `rol_grupo` int(11) NOT NULL,
  `rol_permisos` varchar(45) CHARACTER SET utf8 NOT NULL,
  `rol_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `roles` (`rol_id`, `rol_nombre`, `rol_funciones`, `rol_redireccion`, `rol_id_padre`, `rol_grupo`, `rol_permisos`, `rol_activar`) VALUES
(1,	'Administrador',	'todo poderoso',	1,	1,	1,	'',	1),
(2,	'Diseñador web',	'',	1,	1,	1,	'',	1),
(3,	'Funcionarios',	'',	3,	1,	1,	'',	1),
(4,	'Encargado de RRHH',	'',	1,	1,	0,	'',	1),
(5,	'Jefe Division Construccion',	'encargado de toda la división',	1,	1,	0,	'',	1);

DROP TABLE IF EXISTS `roles_rel`;
CREATE TABLE `roles_rel` (
  `rol_rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_rel_rol_id` int(11) NOT NULL,
  `rol_rel_cat_id` int(11) NOT NULL,
  `rol_rel_sis_id` int(11) NOT NULL,
  `rol_rel_mod_id` int(11) NOT NULL,
  `rol_rel_mod_p_ver` int(1) NOT NULL,
  `rol_rel_mod_p_activar` int(1) NOT NULL,
  `rol_rel_mod_p_agregar` int(1) NOT NULL,
  `rol_rel_mod_p_editar` int(1) NOT NULL,
  `rol_rel_mod_p_eliminar` int(1) NOT NULL,
  PRIMARY KEY (`rol_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `roles_rel` (`rol_rel_id`, `rol_rel_rol_id`, `rol_rel_cat_id`, `rol_rel_sis_id`, `rol_rel_mod_id`, `rol_rel_mod_p_ver`, `rol_rel_mod_p_activar`, `rol_rel_mod_p_agregar`, `rol_rel_mod_p_editar`, `rol_rel_mod_p_eliminar`) VALUES
(1,	4,	0,	4,	0,	0,	0,	0,	0,	0),
(2,	4,	0,	0,	16,	1,	1,	1,	1,	1),
(3,	5,	22,	0,	0,	0,	0,	0,	0,	0),
(4,	5,	0,	0,	9,	1,	1,	1,	1,	1),
(5,	5,	0,	0,	11,	1,	1,	1,	1,	1),
(6,	5,	0,	0,	17,	1,	1,	1,	1,	1),
(7,	5,	0,	0,	10,	1,	1,	1,	1,	1),
(8,	2,	3,	0,	0,	0,	0,	0,	0,	0),
(9,	2,	0,	1,	0,	0,	0,	0,	0,	0),
(10,	2,	0,	2,	0,	0,	0,	0,	0,	0),
(11,	2,	0,	3,	0,	0,	0,	0,	0,	0),
(12,	2,	0,	0,	8,	1,	1,	1,	1,	1),
(13,	2,	0,	0,	15,	1,	1,	1,	1,	1),
(14,	2,	0,	0,	12,	1,	1,	1,	1,	1),
(15,	2,	0,	0,	13,	1,	1,	1,	1,	1),
(16,	2,	0,	0,	9,	1,	1,	1,	1,	1),
(17,	2,	0,	0,	11,	1,	1,	1,	1,	1),
(18,	2,	0,	0,	17,	1,	1,	1,	1,	1),
(19,	2,	0,	0,	10,	1,	1,	1,	1,	1),
(20,	2,	0,	0,	14,	1,	1,	1,	1,	1);

DROP TABLE IF EXISTS `sistemas`;
CREATE TABLE `sistemas` (
  `sis_id` int(11) NOT NULL AUTO_INCREMENT,
  `sis_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sis_descripcion` text CHARACTER SET utf8 NOT NULL,
  `sis_icono` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sis_color` varchar(7) CHARACTER SET utf8 NOT NULL,
  `sis_tipo` int(11) NOT NULL COMMENT '0 - Multiproposito1 - CMS2 - CRM3 - ERP4 - RRHH5 - ADM7 - PROYECTOS8 - FiNANZAS9 - GERENCIA10 - TIC',
  `sis_activar` int(11) NOT NULL,
  `sis_orden` int(11) NOT NULL,
  PRIMARY KEY (`sis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `sistemas` (`sis_id`, `sis_nombre`, `sis_descripcion`, `sis_icono`, `sis_color`, `sis_tipo`, `sis_activar`, `sis_orden`) VALUES
(1,	'Webs',	'',	'icn-code',	'#ffdc51',	1,	1,	0),
(2,	'E-commerce',	'',	'icn-cart',	'#e83759',	10,	1,	0),
(3,	'Intranet',	'',	'icn-intranet',	'#879099',	0,	1,	0),
(4,	'Recursos Humanos',	'',	'icn-rrhh color-text-violeta',	'#8b3b8f',	4,	1,	0),
(5,	'Adm. General',	'',	'icn-suitcase color-text-naranja',	'#8a7354',	0,	1,	0);

DROP TABLE IF EXISTS `sistemas_modulos`;
CREATE TABLE `sistemas_modulos` (
  `sistemas_sis_id` int(11) NOT NULL,
  `modulos_mod_id` int(11) NOT NULL,
  `mod_orden` int(11) NOT NULL,
  PRIMARY KEY (`sistemas_sis_id`,`modulos_mod_id`),
  KEY `fk_sistemas_has_modulos_modulos1_idx` (`modulos_mod_id`) USING BTREE,
  KEY `fk_sistemas_has_modulos_sistemas1_idx` (`sistemas_sis_id`) USING BTREE,
  CONSTRAINT `fk_sistemas_modulos_modulos1` FOREIGN KEY (`modulos_mod_id`) REFERENCES `modulos` (`mod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sistemas_modulos_sistemas1` FOREIGN KEY (`sistemas_sis_id`) REFERENCES `sistemas` (`sis_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `sistemas_modulos` (`sistemas_sis_id`, `modulos_mod_id`, `mod_orden`) VALUES
(1,	8,	0),
(1,	12,	0),
(1,	13,	0),
(1,	15,	0),
(2,	9,	0),
(2,	10,	0),
(2,	11,	0),
(2,	17,	0),
(3,	14,	0),
(3,	20,	0),
(3,	21,	0),
(3,	23,	0),
(4,	16,	0),
(4,	18,	0),
(4,	19,	0),
(4,	24,	0),
(5,	22,	0);

DROP TABLE IF EXISTS `sitios`;
CREATE TABLE `sitios` (
  `sitio_id` int(11) NOT NULL AUTO_INCREMENT,
  `sitio_nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_dominio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_carpeta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_orden` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_activar` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`sitio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `sitios_categoria`;
CREATE TABLE `sitios_categoria` (
  `sitios_sitios_id` int(11) NOT NULL,
  `categoria_cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `solicitud_permiso`;
CREATE TABLE `solicitud_permiso` (
  `sol_per_id` int(11) NOT NULL AUTO_INCREMENT,
  `sol_per_id_usuario` int(11) NOT NULL,
  `sol_per_id_dependencia` int(11) NOT NULL,
  `sol_per_fecha` date NOT NULL,
  `sol_per_fecha_inicio` datetime NOT NULL,
  `sol_per_fecha_final` datetime NOT NULL,
  `sol_per_motivo` text NOT NULL,
  `sol_per_compensar` int(1) NOT NULL COMMENT '0=si;1=no',
  `sol_per_fecha_autorizado` datetime NOT NULL,
  `sol_per_nota` text NOT NULL,
  `sol_per_estado` int(1) NOT NULL COMMENT '0=solicitado;1=Revision;2=Aprobado;3=denegado',
  `sol_per_activar` int(1) NOT NULL,
  `sol_per_papelera` int(1) NOT NULL,
  PRIMARY KEY (`sol_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `tipo_empresa`;
CREATE TABLE `tipo_empresa` (
  `tip_emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tip_emp_nombre` varchar(150) NOT NULL,
  `tip_emp_descripcion` varchar(255) NOT NULL,
  `tip_emp_activar` int(11) NOT NULL,
  `tip_emp_usuario` int(11) NOT NULL,
  PRIMARY KEY (`tip_emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tipo_empresa` (`tip_emp_id`, `tip_emp_nombre`, `tip_emp_descripcion`, `tip_emp_activar`, `tip_emp_usuario`) VALUES
(1,	'Empresa Afiliada',	'',	1,	1),
(2,	'Empresa Recicladora',	'',	1,	1);

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usu_apellidos` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usu_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usu_password` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `usu_estado` int(11) NOT NULL,
  `usu_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usu_padre` int(11) NOT NULL,
  `usu_ruta_amigable` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usu_activar` int(11) NOT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `usuarios` (`usu_id`, `usu_nombre`, `usu_apellidos`, `usu_email`, `usu_password`, `usu_estado`, `usu_imagen`, `usu_padre`, `usu_ruta_amigable`, `usu_activar`) VALUES
(1,	'Hermany',	'Terrazas',	'hterrazas@wappcom.com',	'NDg2Mg==',	1,	'',	0,	'',	0);

DROP TABLE IF EXISTS `usuarios_grupos`;
CREATE TABLE `usuarios_grupos` (
  `usuarios_usu_id` int(11) NOT NULL,
  `grupos_grupo_id` int(11) NOT NULL,
  PRIMARY KEY (`usuarios_usu_id`,`grupos_grupo_id`),
  KEY `fk_usuarios_has_usuarios_grupos_usuarios_grupos1_idx` (`grupos_grupo_id`) USING BTREE,
  KEY `fk_usuarios_has_usuarios_grupos_usuarios1_idx` (`usuarios_usu_id`) USING BTREE,
  CONSTRAINT `fk_usuarios_grupos_grupos` FOREIGN KEY (`grupos_grupo_id`) REFERENCES `grupos` (`grupo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_grupos_usuarios` FOREIGN KEY (`usuarios_usu_id`) REFERENCES `usuarios` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `usuarios_roles`;
CREATE TABLE `usuarios_roles` (
  `usuarios_usu_id` int(11) NOT NULL,
  `roles_rol_id` int(11) NOT NULL,
  PRIMARY KEY (`usuarios_usu_id`,`roles_rol_id`),
  KEY `fk_usuarios_has_roles_roles1_idx` (`roles_rol_id`) USING BTREE,
  KEY `fk_usuarios_has_roles_usuarios1_idx` (`usuarios_usu_id`) USING BTREE,
  CONSTRAINT `fk_usuarios_roles_roles` FOREIGN KEY (`roles_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_roles_usuarios` FOREIGN KEY (`usuarios_usu_id`) REFERENCES `usuarios` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `usuarios_roles` (`usuarios_usu_id`, `roles_rol_id`) VALUES
(1,	1);

DROP TABLE IF EXISTS `valor`;
CREATE TABLE `valor` (
  `val_id` int(11) NOT NULL AUTO_INCREMENT,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_usario` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL,
  PRIMARY KEY (`val_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `valor_noticias`;
CREATE TABLE `valor_noticias` (
  `val_not_id` int(11) NOT NULL,
  `val_usuario` int(11) NOT NULL,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL,
  PRIMARY KEY (`val_usuario`,`val_not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- 2017-07-12 02:20:08
