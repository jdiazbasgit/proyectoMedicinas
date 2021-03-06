-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: medicinas
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROL` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'medico'),(2,'sanitario'),(3,'paciente');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_registro`
--

DROP TABLE IF EXISTS `tb_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_registro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `clave` char(16) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `ROLES_ID` int NOT NULL,
  PRIMARY KEY (`id`,`ROLES_ID`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  KEY `fk_tb_registro_ROLES1_idx` (`ROLES_ID`),
  CONSTRAINT `fk_tb_registro_ROLES1` FOREIGN KEY (`ROLES_ID`) REFERENCES `roles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_registro`
--

LOCK TABLES `tb_registro` WRITE;
/*!40000 ALTER TABLE `tb_registro` DISABLE KEYS */;
INSERT INTO `tb_registro` VALUES (1,'javierSanitario','1234','Javier','Sanitario',2),(2,'javierMedico','1234','Javier','Medico',1),(3,'javierPaciente','1234','Javier','Paciente',3),(4,'JavierPaciente1','1234','Javier1','Paciente',3);
/*!40000 ALTER TABLE `tb_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_medicinas`
--

DROP TABLE IF EXISTS `tipos_medicinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_medicinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TIPO_MEDICAMENTO` varchar(45) NOT NULL,
  `NOMBRE_MEDICAMENTO` varchar(45) NOT NULL,
  `GENERALIDADES` varchar(500) NOT NULL,
  `INDICACIONES` varchar(500) NOT NULL,
  `CUIDADOS` varchar(500) NOT NULL,
  `RAM` varchar(500) NOT NULL,
  `LINK_FICHA_TECNICA` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nombre` (`NOMBRE_MEDICAMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_medicinas`
--

LOCK TABLES `tipos_medicinas` WRITE;
/*!40000 ALTER TABLE `tipos_medicinas` DISABLE KEYS */;
INSERT INTO `tipos_medicinas` VALUES (33,'AMINAS','ADRENALINA / EPINEFRINA','Presentaci??n 1mg/ml ; Administraci??n IV, IM, SC','PCR, Shock anafil??ctica, Shock Cardiog??nico','Vigilancia estrecha de FC, TA y FR, IM evitar administraci??n en nalgas por riesgo de gangrena gaseosa, Vida media 2-3 min','Dificultad respiratoria, Sudoraci??n, na??seas, v??mitos, temblores y mareos','https://cima.aemps.es/cima/dochtml/ft/68552/FT_68552.html'),(34,'AMINAS','NORADRENALINA / NOREPINEFRINA','Presentaci??n 10mg/ml ; Administraci??n IV ; Dosis inicial 8-12 mcg/min','Hipertensi??n aguda, Coadyuvante temporal en PCR e hipotensi??n aguda','Vigilancia de TA, v??a de perfusi??n y puntos distales, Dejar permeable y libre la luz de la v??a al retirar la perfusi??n continua, Comprobar la volemia del paciente, Vida media de 20 seg','Necrosis, Bradicardia y palpitaciones, Disminuci??n de gasto cardiaco en uso prolongado','https://cima.aemps.es/cima/dochtml/ft/68552/FT_68552.html'),(35,'AMINAS','NORADRENALINA / NOREPINEFRINA','Presentaci??n 10mg/ml ; Administraci??n IV ; Dosis inicial 8-12 mcg/min','Hipertensi??n aguda, Coadyuvante temporal en PCR e hipotensi??n aguda','Vigilancia de TA, v??a de perfusi??n y puntos distales, Dejar permeable y libre la luz de la v??a al retirar la perfusi??n continua, Comprobar la volemia del paciente, Vida media de 20 seg','Necrosis, Bradicardia y palpitaciones, Disminuci??n de gasto cardiaco en uso prolongado','https://cima.aemps.es/cima/dochtml/ft/62002/FT_62002.html'),(36,'AMINAS','EFEDRINA','Presentaci??n 50mg/10ml ; Administraci??n IV ; Dosis 10-25mg cada 5 min, sin exceder de 150mg','HTA en anestesia general y loco-regional, hTA por depresi??n mioc??rdica','Vigilancia ECG + TA, Uso limitado a bolos, Efectos permanecen unos 60 min desde su administraci??n, Riesgo de dependencia','Nerviosismo, delirio, inquietud, fatiga, palpitaciones, taquicardia, dolor de pecho, convulsiones','https://cima.aemps.es/cima/pdfs/es/ft/70338/70338_ft.pdf'),(37,'AMINAS','EFEDRINA','Presentaci??n 50mg/10ml ; Administraci??n IV ; Dosis 10-25mg cada 5 min, sin exceder de 150mg','HTA en anestesia general y loco-regional, hTA por depresi??n mioc??rdica','Vigilancia ECG + TA, Uso limitado a bolos, Efectos permanecen unos 60 min desde su administraci??n, Riesgo de dependencia','Nerviosismo, delirio, inquietud, fatiga, palpitaciones, taquicardia, dolor de pecho, convulsiones','https://cima.aemps.es/cima/pdfs/es/ft/70338/70338_ft.pdf'),(38,'AMINAS','EFEDRINA','Presentaci??n 50mg/10ml ; Administraci??n IV ; Dosis 10-25mg cada 5 min, sin exceder de 150mg','HTA en anestesia general y loco-regional, hTA por depresi??n mioc??rdica','Vigilancia ECG + TA, Uso limitado a bolos, Efectos permanecen unos 60 min desde su administraci??n, Riesgo de dependencia','Nerviosismo, delirio, inquietud, fatiga, palpitaciones, taquicardia, dolor de pecho, convulsiones','https://cima.aemps.es/cima/pdfs/es/ft/70338/70338_ft.pdf'),(39,'AMINAS','FENILEFRINA','Presentaci??n 50mcg/ml ; Administraci??n IV ; Dosis 25-50 mg/min sin exceder de 100mg','HTA durante anestesia espinal, epidural o general','Cuidado en pacientes con HTA, cardiopat??as o braquicardias, Los efectos permanecen unos 20 minutos','Bradicardia, arritmias, dolor de cabeza, nerviosismo, hemorragia cerebral, n??useas y midriasis','https://cima.aemps.es/cima/pdfs/es/ft/80352/FT_80352.pdf'),(40,'AMINAS','DOBUTAMINA','Presentaci??n 250mg/20ml ; Administraci??n IV','Estados de hipoperfusi??n con GC insuficiente para satisfacer demandas, Aumento anormal de presiones de llenado ventricular con riesgo de congesti??n y edema pulmonar','Se administra s??lo en PC, Cuidado con anafilaxia por contener sulfitos, Vigilancia de TAM debido a posibles bajadas de TA, A partir de las 72h puede precisar dosis altas, Semivida de 2 min','Dolor anginoso, HTA, hipocalemia, flebitis, n??useas, cefaleas','https://cima.aemps.es/cima/pdfs/es/ft/61952/FT_61952.pdf'),(41,'AMINAS','DOPAMINA','Presentaci??n 200mg/5ml ; Administraci??n IV','Correcci??n desequilibrios hemodin??micos en el Shock, traumatismos, septicemias endot??xicas','Corregir hipovolemia con sangre previa a la administraci??n, Control continuo de la volemia, contractilidad mioc??rdica y perfusi??n perif??rica, Incompatibilidad con insulina y NPT','N??useas, v??mitos, cefaleas, gangrena tras administraciones prolongadas, necrosis del tejido circundante y anafilaxia','https://cima.aemps.es/cima/pdfs/es/ft/63331/FT_63331.pdf'),(42,'AMINAS','ISOPRENALINA / ALEUDRINA','Presentaci??n 0.2mg/ml ; Administraci??n IV','S??ndrome de Morgagni-Stokes-Adams, bradicardia y bloqueos cardiacos, Situaciones con GC insuficiente','Aumenta la eliminaci??n de la teoflina y puede potenciar la hipocalemia, hiperglucemia y taquicardia, Riesgo de anafilaxia por contenido de sulfitos y semivida de 5 min','Taquicardia, arritmias, hTA, temblores, ectopias ventriculares, cefalea, sofocos','http://cima.aemps.es/cima/pdfs/es/ft/47131/47131_ft.pdf'),(43,'ANTIARR??TMICOS','AMIODARONA / TRANGOREX','Presentaci??n 150mg/3ml ; Administraci??n IV','RCP, Taquiarritmias asociadas al s??ndrome de Wolf-parkinson-White, Prevenci??n de la recidiva de la FA y Flutter, Taquiarritmias de naturaleza parox??stica','Muy importante monitorizar la funci??n cardiaca y TA, Precauci??n en casos de hTA e insuficiencia respiratoria severa, Cuidado con su uso en pacientes con VMI y cifras de FiO2 elevadas','Neutropenia, agranulocitis, bradicardia, elevaci??n de las transaminasas, cefalea, HTA e hTA','https://cima.aemps.es/cima/pdfs/es/ft/54723/54723_ft.pdf'),(44,'ANTIARR??TMICOS','ADENOSINA','Presentaci??n 6mg/2ml ; Administraci??n IV','Taquicardia parox??stica sintom??tica que requiere tratamiento','Se debe administrar en bolo, de manera r??pida y con monitorizaci??n card??aca, Debe ser interrumpida inmediatamente si se observa la aparici??n de angina de pecho o insuficiencia respiratoria, Vida media de 10 segundos','Bradicardia, asistolia, pausa sinusal, visi??n borrosa, mareo, cefalea, disnea, sabor met??lico, presi??n en el pecho','https://cima.aemps.es/cima/pdfs/es/ft/81546/81546_ft.pdf'),(45,'RELAJANTES NEUROMUSCULARES','CISATRACURIO / NIMBEX','Presentaci??n 2mg/ml ; Administraci??n IV','Relajaci??n neuromuscular durante procedimientos Qx y en UCI, Coadyuvante de anestesia general o sedaci??n para facilitar la IOT y VMI','Se debe controlar la funci??n NMs durante el tratamiento para adecuar la dosis y monitorizar la actividad cerebral, No se puede mezclar con Propofol y se debe tener a mano material para IOT, mantenimiento de ventilaci??n y oxigenaci??n adecuada','Bradicardia, hTA, rubor cut??neo, erupci??n. broncoespasmo, anafilaxia y miopat??as','https://cima.aemps.es/cima/pdfs/es/ft/76000/FT_76000.pdf'),(46,'RELAJANTES NEUROMUSCULARES','ROCURONIO / ESMER??N','Presentaci??n 10mg/ml ; Administraci??n IV','Coadyuvante en anestesia general para IOT y uso a corto plazo en UCI para IOT','Antes de extubar al paciente se debe asegurar que el efecto del f??rmaco ha sido eliminado totalmente, Su efecto puede disminuir con Neostigmina, fenito??na o carbamazepina','Anafilaxia, par??lisis fl??cida, taquicardia, colapso circulatorio, shock, apnea, broncoespasmo, fallo respiratorio','https://cima.aemps.es/cima/pdfs/es/ft/61141/61141_ft.pdf'),(47,'RELAJANTES NEUROMUSCULARES','ANECTINE','Presentaci??n 50mg/ml ; Administraci??n IV','Se usa para IOT y para reducir la intensidad de las contracciones musculares inducidas por medios farmacol??gicos o el??ctricos','Se debe monitorizar el BIS durante el tratamiento, Cuidado en pacientes s??pticos por agravamiento','Dolores tras su utilizaci??n, aumento de la presi??n intraocular, bradicardia, taquicardia, arritmia y broncoespasmos','https://cima.aemps.es/cima/dochtml/p/33815/P_33815.html'),(48,'ANESTESIA','PROPOFOL','Presentaci??n 10mg/ml ; Administraci??n IV','Anestesia general, Sedaci??n en procedimientos Qx s??lo o combinado con anestesia local y Sedaci??n en VMI en UCI','Requiere monitorizaci??n respiratoria y hemodin??mica, Se puede administrar en un periodo m??ximo de 7 d??as, Tiene riesgo de convulsiones en pacientes epil??pticos, Necesario cambio de sistema de medicaci??n cada 12 horas','Shock anafil??ctico, broncoespasmo, acidosis metab??lica, hipercalemia, hiperlipidemia, convulsiones, arritmias y epilepsia','https://cima.aemps.es/cima/pdfs/es/ft/62134/62134_ft.pdf'),(49,'ANESTESIA','MIDAZOLAM','Presentaci??n 1mg/ml ; Administraci??n IV','Sedaci??n consciente y en UCI, Anestesia','Vigilar nivel de sedaci??n y tolerancia hemodin??mica','Broncoespasmo, shock anafil??ctico, hTA, bradicardia, depresi??n respiratoria, apnea','https://cima.aemps.es/cima/dochtml/ft/72016/FT_72016.html'),(50,'ANESTESIA','KETAMINA','Presentaci??n 50mg/ml ; Administraci??n IV, IM','Intervenciones diagn??sticas y Qx que no requieran relajaci??n muscular, Intervenciones cortas y Coadyuvante de otros agentes anest??sicos','Durante la anestesia puede haber movimientos involuntarios t??nico-cl??nicos en las extremidades, Tras el efecto pueden aparecer manifestaciones psicol??gicas (sue??o, alucinaciones...), Administraci??n lenta','Anafilaxia, HTA, Taquicardia, alucinaciones, nistagmus, hiperton??a, aumento de presi??n intraocultar, apnea y depresi??n respiratoria','https://cima.aemps.es/cima/pdfs/es/ft/47034/FT_47034.pdf'),(51,'ANESTESIA','ETOMIDATO','Presentaci??n 2mg/ml ; Administraci??n IV','Anestesia general en operaciones y procedimientos','No utiliza en PC por disminuci??n de Cortisol tras administraciones, Puede ocasionar una insuficiencia suprarrenal transitoria y disminuci??n de cortisol, Utilizar con precauci??n en pacientes cr??ticos por un aumento del riesgo de mortalidad','Arritmias, hTA, shock anafil??ctico, apnea,laringoespasmo, hiperventilaci??n','https://cima.aemps.es/cima/dochtml/ft/72016/FT_72016.html'),(52,'ANALG??SICOS','REMIFENTANILO','Presentaci??n 5mg/ml ; Administraci??n IV','Anestesia general en operaciones y procedimientos','Antes de su retirada se debe administrar otra analgesia para evitar cambios hemodin??micos tras su retirada, Se debe diluir hasta obtener concentraciones de entre 50 y 250 mcg/ml, Tras su retirada el efecto dura unos 10 minutos, No mezclar nunca con Propofol','Bradicardia, hTA, depresi??n respiratoria, apnea, dependencia y dolor de rebote','https://cima.aemps.es/cima/dochtml/ft/76233/FT_76233.html'),(53,'ANALG??SICOS','FENTANILO','Presentaci??n 0.05mg/ml ; Administraci??n IV','Anestesia general y local, administrado con f??rmaco neurol??ptico o premedicaci??n analg??sica, Anest??sico con ox??geno en intervenciones','La analgesia profunda va acompa??ada de una marcada depresi??n respiratoria que puede persistir o reaparecer en el postoperatorio, No usar nunca con Epinefrina ya que provoca hTA','Movimientos miocl??nicos no epil??pticos, cefalea, mareos, n??useas, v??mitos, dificultad respiratoria, s??ndrome de abstinencia','https://cima.aemps.es/cima/dochtml/p/41764/Prospecto_41764.html'),(54,'IONES','SULFATO DE MAGNESIO','Presentaci??n 1.5g/10ml ; Administraci??n IV','Torsade de Pointes, Aporte de magnesio durante el reequilibrio electrol??tico, Eclampsia','Su administraci??n puede afecar a la transmisi??n neuromuscular y exacerbar la debilidad que acompa??a a la miastenia gravis, Pacientes con deficiencias leves y moderadas de magnesio, No administrar junto a Hidrocortisona, tetraciclina ni tobramicina','PCR o colapso circulatorio, hTA, bradicardia, rubor, n??useas, v??mitos, debilidad muscular, cefalea, mareos, somnolencia, confusi??n, estado comatoso','https://cima.aemps.es/cima/pdfs/es/ft/78350/78350_ft.pdf'),(55,'IONES','GLUCONATO C??LCICO','Presentaci??n 940g/10ml ; Administraci??n IV, IM','Tratamiento de hipocalcemia aguda','Velocidad lenta de administraci??n inferior a 2ml/min, En IM s??lo en gl??teos y profundo debido a riesgo de irritaci??n local, Tener cuidado con pacientes en tratamiento con Ceftriaxona, ya que traen reacciones fatales con precipitados de calcio en los pulmones, Evitar dosis altas de vitamina D ','Bradicardia, arritmia, hTA, vasodilataci??n, colapso circulatorio, n??useas, v??mitos, sensaci??n de calor. sudoraci??n','https://cima.aemps.es/cima/pdfs/es/ft/69465/FT_69465.pdf'),(56,'IONES','CLORURO DE CALCIO','Presentaci??n 100g/ml ; Administraci??n IV','Tratamiento de hipocalcemia cuando se requiera un aumento r??pido de la concentraci??n de calcio en el suero, Como coadyuvante en reanimaci??n cardiaca','Inyectar despacio con aguja peque??a en gran vaso para reducir al m??nimo la irritaci??n venosa, Muy importante evitar altas concentraciones de calcio en coraz??n ya que pueden causar s??ncope cardiaco, Puede ser adecuado el uso de calor local','Mareos, somnolencia, arritmias, rubor, sensaci??n de calor, n??useas, v??mitos','https://cima.aemps.es/cima/pdfs/es/ft/49072/FT_49072.pdf'),(57,'IONES','CLORURO POT??SICO','Presentaci??n 1g/ml ; Administraci??n IV','Hipopotasemia, en particular si hay alcalosis hipoclor??mica','No administrar en SG5 ya que disminuye la concentraci??n s??rica de potasio, Cuidado en su administraci??n a pacientes diur??ticos ahorradores de potasio','Acidosis, hipercloremia, arritmia cardiaca y n??useas','https://cima.aemps.es/cima/pdfs/es/ft/60353/60353_ft.pdf'),(58,'IONES','CLORURO POT??SICO','Presentaci??n 1g/ml ; Administraci??n IV','Hipopotasemia, en particular si hay alcalosis hipoclor??mica','No administrar en SG5 ya que disminuye la concentraci??n s??rica de potasio, Cuidado en su administraci??n a pacientes diur??ticos ahorradores de potasio','Acidosis, hipercloremia, arritmia cardiaca y n??useas','https://cima.aemps.es/cima/pdfs/es/ft/60353/60353_ft.pdf'),(59,'BETABLOQUEANTES','ESMOLOL','Presentaci??n 10mg/ml ; Administraci??n IV','Taquicardia sinusal no compensada, Taquicardia e HTA durante la anestesia','Monitorizaci??n continua de TA y ECG. Se debe retirar de forma progresiva para evitar taquicardia e HTA de rebote','HTA y taquicardia de rebote tras retirada, hTA, bradicardia, paro cardiaco','https://cima.aemps.es/cima/pdfs/es/ft/72349/FichaTecnica_72349.html.pdf'),(60,'ANTIHIPERTENSIVOS','CLEVIDIPINO','Presentaci??n 0.5mg/ml ; Administraci??n IV','Reducci??n r??pida de la TA en entorno perioperatorio','Cambio de sistema cada 12 horas por su alto contenido en l??quido, Monitorizar TA y FC, retirada acorde a la introducci??n de antihipertensivo oral','Edema, dolor tor??cico, hTA, taquicardia refleja','https://cima.aemps.es/cima/pdfs/es/ft/76595/76595_ft.pdf'),(61,'ANTIHIPERTENSIVOS','URADIPILO','Presentaci??n 5mg/ml ; Administraci??n IV','Crisis de hipertensi??n arterial, Protecci??n perioperatoria contra incrementos tensionales en el curso de la anestesia','Puede interaccionar a dosis altas con barbit??ricos prolongando su efecto','Palpitaciones, bradicardia, taquicardia, n??useas, cefalea, v??rtigos','https://cima.aemps.es/cima/pdfs/es/ft/76741/76741_ft.pdf'),(62,'ANTIHIPERTENSIVOS','HIDRALAZINA','Presentaci??n 20mg/ampolla ; Administraci??n IV, IM','HTA esencial severa, Eclampsia, preeclampsia','Monitorizar TA en todo momento, Dosis de 10 a 40 mg','Cefalea, n??useas, v??mitos, diarrea, taquicardia','https://cima.aemps.es/cima/pdfs/es/ft/56236/56236_ft.pdf'),(63,'ANTIHIPERTENSIVOS','SOLINITRINA','Presentaci??n 1mg/ml ; Administraci??n IV','Insuficiencia ventricular congestiva, Cirug??a card??aca, Angina de pecho','Preparar siempre en SG5%, Retirar siempre de forma progresiva','Taquicardia, hTA, ruborizaci??n, n??useas, cefalea transitoria','https://cima.aemps.es/cima/pdfs/es/ft/57127/57127_ft.pdf'),(64,'ANTIHIPERTENSIVOS','NITROPRUSIATO','Presentaci??n 50mg ; Administraci??n IV, SL','Crisis HTA refractaria a otros tratamientos, hTA controlada durante la anestesia para reducir sangrado en Qx','Interrumpirla de forma progresiva, Monitorizar en todo momento la TA, Siempre en SG5%','Palpitaciones, hTA, bradicardia, nerviosismo, agitaci??n, desorientaci??n, cefalea, n??useas, dolor abdominal','https://cima.aemps.es/cima/pdfs/es/ft/54575/FT_54575.pdf ');
/*!40000 ALTER TABLE `tipos_medicinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_medicinas_tb_registro`
--

DROP TABLE IF EXISTS `tipos_medicinas_tb_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_medicinas_tb_registro` (
  `tipos_medicinas_id` int NOT NULL,
  `tb_registro_id` int NOT NULL,
  `datos` longtext,
  PRIMARY KEY (`tipos_medicinas_id`,`tb_registro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_medicinas_tb_registro`
--

LOCK TABLES `tipos_medicinas_tb_registro` WRITE;
/*!40000 ALTER TABLE `tipos_medicinas_tb_registro` DISABLE KEYS */;
INSERT INTO `tipos_medicinas_tb_registro` VALUES (3,60,'CLEVIDIPINO: prueba CLEVIDIPINO'),(33,3,'prueba de receta'),(40,3,'otra prueba'),(56,3,'CLORURO DE CALCIO: cloruro de calcio prueba');
/*!40000 ALTER TABLE `tipos_medicinas_tb_registro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 19:52:00
