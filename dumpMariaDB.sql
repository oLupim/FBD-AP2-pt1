/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `hint` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependente` (
  `id_dep` int(11) NOT NULL,
  `nome_dep` varchar(30) NOT NULL,
  `data_nasc` date NOT NULL,
  `numero_emp` int(11) NOT NULL,
  PRIMARY KEY (`id_dep`),
  KEY `empregado_dependente` (`numero_emp`),
  CONSTRAINT `empregado_dependente` FOREIGN KEY (`numero_emp`) REFERENCES `emp_depto` (`num_depto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_depto` (
  `num_depto` int(11) NOT NULL,
  `nome_depto` varchar(30) DEFAULT NULL,
  `num_emp` int(11) NOT NULL,
  `salario` int(11) NOT NULL,
  `nome_emp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_depto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participa_de` (
  `hs_trab` time NOT NULL,
  `numero_empdepto` int(11) NOT NULL,
  `id_proj` int(11) NOT NULL,
  KEY `empdepto_participa_de` (`numero_empdepto`),
  KEY `projeto_participa` (`id_proj`),
  CONSTRAINT `empdepto_participa_de` FOREIGN KEY (`numero_empdepto`) REFERENCES `emp_depto` (`num_depto`),
  CONSTRAINT `projeto_participa` FOREIGN KEY (`id_proj`) REFERENCES `projeto` (`id_projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projeto` (
  `id_projeto` int(11) NOT NULL,
  `nome_projeto` varchar(30) DEFAULT NULL,
  `numero_depto` int(11) NOT NULL,
  PRIMARY KEY (`id_projeto`),
  KEY `departamento_projeto` (`numero_depto`),
  CONSTRAINT `departamento_projeto` FOREIGN KEY (`numero_depto`) REFERENCES `emp_depto` (`num_depto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
