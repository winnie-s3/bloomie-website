-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.31 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bloomie_db
CREATE DATABASE IF NOT EXISTS `bloomie_db` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bloomie_db`;

-- Copiando estrutura para tabela bloomie_db.adm
CREATE TABLE IF NOT EXISTS `adm` (
  `ID_adm` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  PRIMARY KEY (`ID_adm`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `ID_usuario` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.adm: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.banimento
CREATE TABLE IF NOT EXISTS `banimento` (
  `ID_banimento` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `data_banimento` datetime NOT NULL,
  `motivo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_banimento`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `FK_banimento_usuario` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.banimento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `banimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `banimento` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.bloomizade
CREATE TABLE IF NOT EXISTS `bloomizade` (
  `bloomizade` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int DEFAULT NULL,
  `ID_bloomigo` int DEFAULT NULL,
  PRIMARY KEY (`bloomizade`),
  KEY `ID_usuario` (`ID_usuario`),
  KEY `ID_bloomigo` (`ID_bloomigo`),
  CONSTRAINT `usuario1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario2` FOREIGN KEY (`ID_bloomigo`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.bloomizade: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bloomizade` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloomizade` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.conta_inativa
CREATE TABLE IF NOT EXISTS `conta_inativa` (
  `ID_conta_inativa` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `data_inatividade` datetime NOT NULL,
  `motivo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_conta_inativa`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `usuario_inativo` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.conta_inativa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conta_inativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `conta_inativa` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.estudante
CREATE TABLE IF NOT EXISTS `estudante` (
  `ID_estudante` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `instituicao` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interesse1` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `interesse2` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `interesse3` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `interesse4` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `interesse5` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `data_nasc` datetime NOT NULL,
  `personalidade` int NOT NULL,
  PRIMARY KEY (`ID_estudante`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `estudante` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.estudante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.oportunidade
CREATE TABLE IF NOT EXISTS `oportunidade` (
  `ID_oportunidade` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `data_publicação` datetime NOT NULL,
  `categoria` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descricao` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `imagem` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `titulo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipo_personalidade` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idade_min` int NOT NULL,
  `idade_max` int NOT NULL,
  `tempo_expirar` datetime NOT NULL,
  `tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inicio` datetime NOT NULL,
  `link` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tags` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_oportunidade`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `usuario_oportunidade` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.oportunidade: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oportunidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `oportunidade` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.oportunidades_expiradas
CREATE TABLE IF NOT EXISTS `oportunidades_expiradas` (
  `ID_oportunidades_expiradas` int NOT NULL AUTO_INCREMENT,
  `ID_oportunidade` int NOT NULL,
  `data_expiracao` datetime NOT NULL,
  PRIMARY KEY (`ID_oportunidades_expiradas`),
  KEY `ID_oportunidade` (`ID_oportunidade`),
  CONSTRAINT `oportunidade_expirada` FOREIGN KEY (`ID_oportunidade`) REFERENCES `oportunidade` (`ID_oportunidade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.oportunidades_expiradas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oportunidades_expiradas` DISABLE KEYS */;
/*!40000 ALTER TABLE `oportunidades_expiradas` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.oportunidades_negadas
CREATE TABLE IF NOT EXISTS `oportunidades_negadas` (
  `ID_oportunidades_negadas` int NOT NULL AUTO_INCREMENT,
  `ID_oportunidade` int NOT NULL,
  `data_negada` datetime NOT NULL,
  `motivo` varchar(64) NOT NULL,
  PRIMARY KEY (`ID_oportunidades_negadas`),
  KEY `ID_oportunidade` (`ID_oportunidade`),
  CONSTRAINT `oportunidade_negada` FOREIGN KEY (`ID_oportunidade`) REFERENCES `oportunidade` (`ID_oportunidade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.oportunidades_negadas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oportunidades_negadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `oportunidades_negadas` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.post
CREATE TABLE IF NOT EXISTS `post` (
  `ID_post` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `data_publicacao` datetime NOT NULL,
  `documento` varchar(64) DEFAULT NULL,
  `imagem` varchar(64) DEFAULT NULL,
  `texto` varchar(3000) NOT NULL,
  PRIMARY KEY (`ID_post`),
  KEY `ID_autor` (`ID_usuario`),
  CONSTRAINT `autor_post` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.post: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.posts_banidos
CREATE TABLE IF NOT EXISTS `posts_banidos` (
  `ID_posts_banidos` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `ID_ADM` int NOT NULL,
  PRIMARY KEY (`ID_posts_banidos`),
  KEY `ID_usuario` (`ID_usuario`),
  KEY `ID_ADM` (`ID_ADM`),
  CONSTRAINT `adm_post_banido` FOREIGN KEY (`ID_ADM`) REFERENCES `adm` (`ID_adm`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_post_banido` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.posts_banidos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `posts_banidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_banidos` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.post_excluidos
CREATE TABLE IF NOT EXISTS `post_excluidos` (
  `ID_posts_excluidos` int NOT NULL,
  `ID_post` int NOT NULL,
  `ID_usuario` int NOT NULL,
  `data_exclusao` datetime NOT NULL,
  PRIMARY KEY (`ID_posts_excluidos`),
  KEY `ID_post` (`ID_post`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `post_excluido` FOREIGN KEY (`ID_post`) REFERENCES `post` (`ID_post`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_post_excluido` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.post_excluidos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `post_excluidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_excluidos` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.token
CREATE TABLE IF NOT EXISTS `token` (
  `ID_token` int NOT NULL AUTO_INCREMENT,
  `ID_usuario` int NOT NULL,
  `token` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `revogado` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `criado` datetime NOT NULL,
  `atualizado` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `data_expiracao` datetime NOT NULL,
  PRIMARY KEY (`ID_token`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `usuario_token` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.token: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;

-- Copiando estrutura para tabela bloomie_db.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `data_criacao` datetime NOT NULL,
  `senha` varchar(128) NOT NULL DEFAULT '',
  `nome` varchar(32) NOT NULL DEFAULT '',
  `sobrenome` varchar(32) NOT NULL DEFAULT '',
  `estado` char(2) NOT NULL DEFAULT '',
  `cidade` varchar(64) NOT NULL DEFAULT '',
  `tipo` varchar(32) NOT NULL DEFAULT '',
  `sobre` varchar(2600) DEFAULT '',
  `foto_perfil` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  PRIMARY KEY (`ID_usuario`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bloomie_db.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
