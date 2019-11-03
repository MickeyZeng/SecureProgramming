-- MySQL dump 10.13  Distrib 5.7.19, for osx10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: jeesiteTest
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('cb608f0d526f4c5282ec617a559ec410',1,'test_audit.png','809b52df107d48c98625937c3f17b1e9','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0|\0\0\0=ӳ\�\0\0S\�IDATx\�\�\�|T����S����h�˲�l\�e�ծZ1��4�X�\�K]��RVV�\"\�Z/�\"\Z1�c\nĀ����D.I\�c�1f��E\�\�c\��>\�9\�03�I2I�\�L^\�\�\��\�\\\�\\2\��>s>sΜ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�/\0\0\0\0\0�+�,e�\0\0\0\0\0� ެ/\�J���\�%\0\0\0\0�s�m�ɖ-ܟ\�t\0\0\0\0\�y\�vk�\0\0\0\0�V$�\�T\�\��n\0\0\0\0\0�l�[k�\�\�\r\0\0\0\0@\��m�vz\0\0\0\0\0�m�=����\�\0\0\0\0��\�κ=\0\0\0\0\0Q�����~\0\0\0\0\0��f��vgK7\0\0\0\0�\��=\�\��̺\��\�\�q 5\0\0\0\0@�o�\�x4\�\�\�R\�߶6݁nG\�\r\0\0\0\0\��Ͷ�\�j�UM�g�m\�D�\��N7\0\0\0\0�\�\��k�[j��M�\�gz�\�\r\0\0\0\0\�6\�vBM�����Ͷo\�\�\�\�\0\0\0\0��\�֦���;\�f\���?3\�\�\r\0\0\0\0�\�f��\�n���G;�m\�\�\0\0\0\0t\�f�����\�vG�\0\0\0\0\0a��[��5\�i�}�n�\�\r\0\0\0\0],ά\�\�\�6k�լ)�M�\��\�^v#�ݲ]e]\�I\���(��(*ʪάj�r\�z\�poh\�E;�p\�\�\Z���Ud\��ƙu�Y}xyڤ������-\�m��\�@\�\�\r\0\0�h$}\� ý���2[\�:h�76�\�\�A��l5ڋͺ���C���3N\�w�\�\�t�n\0\0\0t\'\�J�ցg�r�+\�\�o��o��d��\�`�(�\�/G)�\�\�(\�\0\0\0\�d\�w�\���\�\�\�\n\�lg|\�\�D6ݭ5���\�vk�\�\��\�\�\0\0@�\�\�\�w�\�yj�y>\�jmskͶ\�Φ\�ޭ}�\0\0\0\04\�zK�#�9@�|g�\�\�O�@[�\�\�l\�tۏG�\r\0\0\0�\�\�\��\'RCH\���yB&�h�{��F�\�\�\��8|g\0\0\0hN��$^��l\�\�h\�o�=�\�\�<��\�6Z�?�\0\0\0&G/��\�+�8�\��\�l#�|w/�fy��O}�ޮ���\r\0\0\0t[YgƉ��Ysx¦\�\�(��\0\0\0hN��gxp\"\�!�9�Vt4ݝݼ\0\0\0\�L֛syp\"\�48:y8\�\�n\�\�F\0\0\0G�V^\�ˀI��>�a\�t����\0\0\0��>���\'�\�%+�\�\�n\�\0\0\0\0�`\�\�&z�\��D�\�\�\0\0\0�C`����f:��\�?�\�\0\0\0\��\0C�m\�f7r\0\0\0�~0tr\�M�\r\0\0\0\���Nn��h�\0\0\0�!0�й�Y��\0\0\0\��\0C\'ʲ\�U/^\n\0\0\0�~0t�8�\\[�\0\0\0�!0�Щ2��$���\0\0\0�7\�8�u\�.�\0\0\0\���\��i�\�\�|�\0\0\0�\�\�o\�]\�xy\0\0\0\0�!0�\�>\��m�\"^\0\0\0�~0���\�|�\0\0\0�\�\�J�\�\�\0\0\0�!0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�\�+\0\0\0�ul0���\0\0\0X\�`\�+\0\0\0\0�c�\�\0\0\0�:6``^\0\0\0�c0\�\0\0\0\0ֱ�\0�\n\0\0\0`00�\0\0\0\0ֱ�\n\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0��\r0��W�\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0�ul0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�,���R�SRRfN�8qolllC\�޽��:P�P={��\���\��l��\�Ϳ#�\0\0\0\��\0\��-[v\�ȑ#\�cbbԜ9�U~~�jh�\�\����:�\��,**T��ϩ�6�\�\���\�_L\�\0\0\0@?X�JM}e}�~�TR\�\�\�j4�\�&*���H�\�\�\�SO=�&\�\0\0\0�!0���پ\��TQ\�v�	��\nq�����}��Üc�\0\0\0\��\0�˖-�G�lm3�?�W-]��\Z3&A�\Zu����k\�\r�#U�f\�Q���\�SN�\�`�r\0\0\0\����R�G���>)\�y�\�7^�b�R5�\�ԭ��\�5v̍*>�Z5t\�j�n���:�\�ޫW�<b\0\0\0�!0�\"\\J\�11?R.W�\��5zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�Ω�\�>�Ss\�\�=\0\0\0\���&N��wΜ\'\�F\�\�f5bx�za�|��V�Jy1Ioپj\�P}��v���{;�c5mڽ;\�Y�H�\0\0\0@?X��Ґ��c6z\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\��ջ\�\�0g\�N�\0\0\0�!0�\"X\�޽UC\�\�f�W߬���*.ڢvoU�w�\�\�;vlW�=��\�\�P/�\�q=\0\0\0\��\���R_6+�\�\�j֬�j\�o&���BU�\�]�v\�P\�\��o5\���\�\�_\���Tǋ\0\0\0\��\0����Ϋ\Z?W\�ֽ�bc��?�TN�ϫJK�Ր\�/U��NU\r\r�5�=\��b�\0\0\0�!0���\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��6\0\0\0\��\r�1��n٤k[�켼\�\�͌t\�h�X�D��x�Jz\�Y�̼��\���P]{\���\�5^�Au�X�\0\0�~��h��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���:^,\�\0\0\0@?XT4\�_8%\r��\�\�ݬ\�H{U7\�\�|?;��;\�	�ܳsu\�-M��\�	js\�\�V\��Չł\r\0\0\0�C`�EE\�}ԩ�{��G��~y�8\�Pˮ\��*.n�����zkwi\�^�Au�X�\0\0�~��h�?�*\�7S_~��J|\�i�0\�:5b��j\�\�+TܕC\�P�Ѿ\�\�\�\��\�Qǎ�EO\�{{�\�ł\r\0\0\0�C`�EE\�}�\n�b�\0\0\0�!0���\���\n�b�\0\0\0�!0���\�>L�Y�`\0\0\0�`Q\�p��\n�b�\0\0\0�!0���\�>D�Y�`\0\0\0�`Q\�p�¬X�\0\0�~��h�PaVmwO�\�@<\0\0@?XX7\��¬Zw\�hm]\�\�\0\0\0�C`��w\�]\�亅g�\�\�\�u\�\�W�/+)\��6��\�_ff�s:\'\�u}��z[�۔����\�\��z�\�K\�Ϛ5�\�c͟?K�>th�\�uUU[��G��7{�\�\�\�f�UV\�\�kj\n��\r��3\�8�\����\�Zi�i�\0\0@?X�7ܟ��\�\r��eYY+�.��\�5y�̆�H����\�;��r��sr�\�ٳ�JN�\�\\\�n\�ݧ\�\��l6\�o�3\�<CO[]�U?�\�`n\���\Z?�j[�i���v��+\�z>ϕ+_pN\�߿C���\�Wk�iyL\�\�gϞ��}_�\�r~ʔ�tþ/\�\���^\�/��\'z�ѣ�\�\�Ͼ\�\�G�\�\��\�\�s�E͘1\�l�\�շ��\��\�[�g�\�\�u\\(\0\0\0�~��m���-��LL|L�\�oٲ.\�m�.��\�*6�\���\�_�\�Ç�\���\�yy\�����*}^[ΟrJo\�|�o6\�w�\�\�J}��cX[��ԡC��˗,���KF\��`�\��euu��oA�\Z\�yH.�55\�\���\�[�\���Y�Xmذ\�\�y\�\�eg�R��Unn�~\�r^�����\��?\�\�w\�9?PÆ]����|�\�/�zm�[�i�\0\0@?X\�4\�iVee�Ԟ=٪��c���ݡD��\�x\�\�����?�k��S99����9\�\�N5�\�\nu�\�\'�;\�\�lb\�6�\�O�\�\�\�R����@����<O-\\���\\�w7\�x\�F��\�.W�*/߬/KM}N?VEş�u�\�җ��-R�_��y����\�\� �\��^�*\�\���T\�|�(\�q\�瓛�z��]�\�\��2��\��c\�}yN׆F��(��(wՙ�Ǭl��1+ެ^�\��C`��Iý�Y-Y2O]tѿ�-[֨ի����n��=�A}^nSX��\�\�I�\�K^/e\�-\�\�-\��\�=��\�c\�^����\�&%=��g���P\�\�O\�˦N�`}W�^���=}cc��&\\]]������Wx�\\�m\�:=}v����f�\�\�z+��m��=[o��ˏ-Sk֤\����U|�}\�O~2H�}��oy.�\�\\nߗL\'\�\�\�P�\\2\�l�W{=�\\\���X�\���5\�sw��5Ƭ\�\�\�5\�YIf�c\��#i��#��#�~��j�?iVr�]w�R�NK[��B{^���\�\�\�.�0\�j��_W_���]\�\��~d���.+\�v\����\�Ի\\\�\�_\�<�4�\�ٖ�U�\�U�^����\��+ӧ�η�Lo�\Z\�~�?�8zt��}\�\��|mm��\�\�iW�Nҧ\�\�\\&\���7^�O.[��I\�h74|��O\�\�\�\�X윗\r��j��\���f\�\�g>�\Z��7��AVt\�a��;G\�f}a\�L^��#�~��n���Y�\�۝\�ӧ\�\�u]f\�\�~o\'u�\��}q���v#+�rWW��v�\\\�\�\�_\�/^,����(V\�\�̦�bUS\�nV*��ý\�ld?V))���\�\�\�oذT7��&ݦ\�n�\����J�y�\�\nש�.�P7\�\�&<\�j\�6{}Ǝ�^\�zk�\�,o\���#�Tv�\n\�h\�zM\�n��_�\�\�G�YY�~_�\0�\�w�w��-\r��a�Y��ڝ�rý�,9x?\��\0�̆��Y�\'��P��\�[JK7�\�5fC[m6�\��\�Ʈ\�\r��\�kk\��\�\�Z?\���\�l\��\��j\�\��\�v7\�ǟKr򓺡ݷo�n�\�\�\���\�y\�.\�if�\�l\�?���>\�\�8v�\�y^r��>`Z�\�Hg[\�\�\�\�\��Oy\\�~�w�B\�V�_�`�3�\\�\�nu\�e��fϞ�/�\�\�\�\��^\���[�o�\�p&ߟ˲Vr\0�O+G\�\�Ix?\��\0�Ć�c�u\�H���]�\������\r\r��ÇK\�M7\�\�2e�\�<���ڞ{n}Z*--\�:\�z}CWz�\�,��ZC%�#\��\�\�\�\���Æ�\�l�SUFF�JM}F?�}�܇�w�^\�u���?�\�µ�	��4\�V]r?\�&8\�l�\�M\�\��\�}����\�\��[�x���{�\�kc\��=c6����\�{\�u\�P��7o����{\���Vjժ\��QCS^�1}\�?�Vrd\���k�eK�#�\0\�G\0�`\�pW{UN\�\nݼ�\��\�t\�lv�\�fڴ�\������M�\Z?\�\�\��\��>�\�j8_�w�|�|II�>\�r}h\�;K�oj�r�)(x\�\�6<����<\��\�\�u���}��|w��&O\�\�\��\�;\�\�c�?0\��������m\�\�\�\�\�ת[o\���\�ۗWTd����B7���z�����1&��}jp\�\Z��9����C`�E\\\��QDUSӇ�2M��K{��\�q\'�IbqtH29x?\��\0�����\n��\�q\'G��#\��T�\���S\��!f�\�N�;��\"萭\�\���,�\Z\�J*\�*J\�\�\�{W>\0\�7���C`�ET\��f�\�n�\��i#\0\�Q./��@?X\�4\�T�U��;9:\�)@�sT\�\�\0�~\��1\r��T�U��;�-\�:)\09\�@?t����\n��\�q\� G\09\�Н\Z\���0+\Zn\0\� G\0y,*\Z\�2*̊�\09\�@^�\0���{/fE\�\r�\� /`�EEý�\n��\�@�\0r�0���\�\�M�Y\�p G\09\�`\�\�O����\�l�vQaR_}U�Ϝ5.��\� /`�E���|(?�\�\�RaR\�\�?��9kv�\'\0\� G\0y,�]u\�e\�\�̙J�F5v\�Ui\�I$O\0\�@�\0�X0\����˵�f7<\�=zT��&�< G\09\�`���&%=H�5f\�UK\�Y�K�\0�#�\��\�0\�\�3O�/*ZA\�ۅ���t�9/�u1y@�\0r�0��G�9\��w�\�k�{�\�Qc·1\�	\09\�@^�\0�¦����l޼�>\�;ݡ�ζ���n\�l��\�@�\0�t\�6�g\�\�\�~����L�e��M/lh(�1\�\��\�\��䧿\�h\�\�\�\�;\��\'\0\� G\0y�{�Ԭ9fm5��z�\�)�\���m�\�8��\� /`�!�eY�/y\�\0r�0�\�9d+�˚W	�\�	 G\0\�@^�\0C\�\�4�﮽���<\�\09\�`\�!\��\�v�\�e!O\09@�\0�:&\�h~P2\�\�\�w�\�@�\0�#����v�uۮq�<\�	 G\0\�@^�\0C�d�z����<\�\09\�`^K[��.7y\�\0r�0�\�NY�4\���<\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0r�\�00��<\�@�\0�0��W`\� G\0\�N�,k@�T;y�X�y�#�\�\��\\�4\�cx�X�y�#�\�^v\�v�Y�x�X�y�#�\�ސ\Z\�q�<,�<\�@�\0����\�r\�w�ٺ\�\�\0\�#�\� /@��.7\�\�fa\0\�@�\0r��d\Zl\�fa\0\�@�\0r��\�\�y4\�	�,�<\�@�\0�t��\�l\�fa\0\�@�\0r��\ra��0\0� G\09\�\"g�)\�;%%e\�ĉ�\�\�\�6�\�\�;\�\�pQ-TϞ=�;���?>|�F�\�HF\�@�\0�#��tc˖-�g\�ȑ�111jΜ\�*??O54|e�\�\�QA��nEE�*1�95p\��\����\�5_\�Y�y�#\0\� /\�Lj\�+\���맒�^P.W�\�46Q�X\�ɋT�>}�:�\�Soba\0\�@�\0�#��t�f��.PEE\�\�\��[\�Uyy�\�۷\�?�\���\�,�G\09@�\0�ҽ,[��ٲ]T�\�l\n]^�t\�Kj̘5j\��\��\�Q7ďTɋ��MG��\�\���SN9\���\�^\�y�#\0\� /\�h\�(\�{\�\�kꓒ�7O~\�U+�/U�>J\�z\�X]c\�ܨ\�\�UC�^�\������8��^�z\�0\0� G\0\�@^�TJ\�11?R.W�\�6zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�\�\�\�\��Ԝq,�<\�\0r��(4qℽs\�<i6�_7�\�\�\�櫬�2TʋIz\��U#�\�\�\�\���\�\�Qm�i\�\�\�i΂D`\�\09\�K��Ґ��c6�\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\��ջ\�\�0g�N`\�\09\�K\�ݻ�jh�\�l\0\�\�c�R\�E[Ԏ\�j��]rzǎ\�\�\��{�\�%��9\\\�d�%X�R\� G\0\�@^�\�R\�\�f\�r�]͚5SM�\�$URR�\�\�ۣk׮j\�}��f<x���\�\��ޖj{u��ě%GeO���!v,�r�䥛4\�u^\�\���Z�\�5�SU�Q�zp�}^UZZ��\\~�z}u�jh��\��W7H�O�-[�?�\�f�\r�#\0\� /ݤ\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��W�ķ\�n\�r��\�\0r��hk��9�u\�&�[\�\�d\�\�mVof�\�F{\��%\�\�ŋT\�Ϫg\�=������\�\�kF��o���\�\�Ih����\�;\�,�r�Q��f\�g\�Z��ͪ��p�Y���i\�Lk�(n��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���\�^Q��\�\�f�-\�,�r�Q��qf\�ZM�+f\�f\� �N����1V#�dM�oք\�l��pJ\Zn�	�\�o�Y����n���~v�5w\�\�g\�\�[��1�\�朷�����o(�Fp[����\�\0\� G\0\�4/\�Dg�Un5ӽ���4�\�[ͺ �\Z\�N\�ݻM=�\��\�\�\�\�Zv%�WqqCԯ\'�\�[�KK\����\�eo(\�\�b-���\�f�\r�#\0\��ܼ�7\�\�\�E�W\�\�>\�~�ek�\��}\�U�o�����S��\�\�*a\�uj\��+\�СW��+���f�}\�\�\�\��ߣ����\���T\�+�\�P:�{8����\�\0rDh^d%^��\�I�w�u���\�>BuQE\�JkH����\� /!2\�j�c:�~c����-\�f\��\�Eo(�}�q�t���#\0\����HS,�ǝ���Ժ�A�\�p���\"�\r\���g\�3\�N\�o0|oǁ\�X�\�@�\0D@^\�H\�3O�c\�w��Fv\��7��*�\�P|�DK��\���\�t�M7+8\09\��0΋�����wk������\�!��*B\�P�\��}���� �n\�fۮ�\��nVp\0r�#\0a��\���K�[�\�\�\� \�E�o(��`\�sKM��\�S�L\�w�Y�\�@�\0�Y^\���\n\�cV�`��~\�0�m\r�����\�ֱ�\�N���\�t��\��m�ٽ��\�@\�E�W�8ď�h��\��\�+���k�\��k�J\�#3s�s:\'\'M���\��6\�\�\�={6����^�\�yޮ}�v��O>�M\�c����]�f\��\�gg�Vg�yF��甔y��څ�\�hO\�\�Z\�l�\����l\�f G\09\�\�yYk\�m!~Li�°\�+\��U\�l�j���={�\�\�9f3\\�\�?1�q\�4\�\�8��\�Z��ަ��V:\�e\�\�U�1�0\�}Z.��-\�eZ�\'םrJ\�\�\�С=z��Y\�g����\�\�^4�\��U]��\�\�;V\�\�~+*�TMM��\�\�[�&O��3}qq����p��lҤ_\��8qq?է�6lX�\�;\�ܠ_\�.n�[�\�v[�\�@Mw�v6\�6�\�\�\n@�\0r �\"�w_\�ǌ1\�\�0n�=�j��n�?mw\�\�g̘�ޫ\�8�K�\�\�������#}^\Zr�i\�\�Z�Ǝ�AM��f���\�z�\�z���?\�\�WJ��\�_�\�ǲo3q\�mzZ�\�\��\�ii�׫k��\�\�{\�y�\�x\�\��ȑ�԰aC��\�\�\�~ކ\�Z�\�\�\�X\�^�f�s�\�]nk����{�\��m�^�0\�i�[j��:\�lw����\� /��ά\�C���x\r\�p{nՌs7\������5��\�\�Ym6�s\�i��j6\�\�F�;Ʃ\�ҍ��i�3���2m]]�JOOQ��.|Z_.\�\�_�\�\�\�]x\�Ul\���<\�\�\�שI�n7\�j�\�yz�4\��er�ii\�\�m\��\�e�����,\�l\��O�\�\�^\�<gy�r���Z��\�\�z�.�n\�\��隚m�\�o\�\�f\r�\�\�\�\�eMwG�mߦ�\�t���#�\��TEb)��v�ܶ�*_��7\�!��\�k\��C_/\�=�MJzB\�]W��JN��/�:�\��\�Y�\�\�\�=\���u�\�\�\�_���\�4\�YY\��������?{\�\�\'\�\�[\�o�}�ڲe���~W\��С]\�s\�\�X\��?��-R��[[\�\�\�ٯ\�\�h\�k\�\��L\�n\�[���\�;\"ɺ�>,cY�\�@�\0�Zl\�\�@\�4\�[,\�#���߾����R]~�Ŏv��\�;\�I�.+\�\�4�g�u�:\�\�&Xn#�_r\�`UP�G�\�~Z\�\�\�[�W�zA_�o\�v\��8۶�S�\'�W����\�\�R�8˗\'\�i]���=7��\��\��2�\�\�**r�\�\�\�\�2���D\�Ǐ�&#\�e��#F\\\��\��\�\�lݾ�\�QA���}��\�h\�\�iiw[~�;�p���#�\�¼�\�֛)\�x\��I\�U\\�i6�K�}�^���@UW8����]\�L/\�/�\�\�+ԁ;Tzz�n\�kj\�\�;�\�popn\�\���s�\�ctC\�\����\�&M�\�l�����e\�3N�f߾m���}T�U*//\�j��9�m\�\�\�Wzݷ�?�\�o\��ii\�\���u��;\�ذ�\�:\�\�|��=M7\�\�f G\09\�\�y\�(\�Ǜ�\"�\���\�l��/読-T˗?�c���\�f;_�{\�\��zws��3��ON~J9�\�lj��\r�\"}Ycc�utr��\�o�}�\�\rw\�\�K\�\�\�\�яa��q^\�lZ��kj\n\�\�å\��몪\�q��\���\�\�6�\��Ч��=K͘1�]�c7ܭ�\r\�&��[�������\�ts�rVp\0r�#\0a�~��孖>\rwM\�e\�\�jZMj�JIq����ڹ\�\�p�~\�0��e*#\�%����\�\�ܾN\�C�fe�\���7\�\��.\�G֮໛=/\�ǵ/�w���\�[[��X\�ߦ��\\.��\��m\�����=��\����\��\�t�\�\��;ۭ�Nw C~���\�@X\�e�Y�\�Pt�\�\��3H����\�\�J\�\�Pa6�Ku\�t�p�����ڙ\�\�\�.�:_R�>\�r��,����\�75}\�LSP�f6�\�\�\��\�\�}P%&>b6\�睊S�SM�6Q��*,\\�N;\�u\�\�^�\�f8��ߪk\�\�T���\��QW��u\��\�\�\�~.�a�\��\�[�\�j�<\�\�\�\��D\�XimskͶ\�Φ\�ޭ}\�SVp\0r�#\0ᑗ\\#t[ä!\�\Z�3H�\�WSSUD\�\�z�|C	����\�v�M��x4۬\�\0\� G\0\�(/��^n�f+�\�;!r.�}C�-ݾ�w\�i�;\���\�>�\�w�Y�\�@�\0�i^���j���V#���wr\�]EuQE��\�O�y6\�mi��Vn\�O���#��ĘuЬ�t��Z�?(�g�RR]T��\�{�4\��\�\�\��v��o���#�\�%D\�\��Ŝ�f^\�wB�\� �*�.�(xC\�\�\�\����:X�\�@�\0�q^&Y\�qgm\�Ժ�G�a)�\�E%o(�\�twv�Vp\0r�#����l\�-g�\�|\�Z��}\�j\�b)UAuQE\�JGwg7r\�\09@��\�K�\�����v�\�\�ַ\"\�}��A\�4��z�ꢊ�7��U����\�\0rDQ^n�\Zo\�-|�\��	�\�:ݺ�t�9� Ѭj�ўdD\�\�\�[h�˩.�(|C	v�pv#g�\r�#\0\��Ҽ0\��\�Z\�w���\�\�fe\�]\�c�y)�\�E�o(mm���Ug}\�\�\09@�\0��\rw\�E\�I��\����f�6@�\0�#��Dyý�ꢊ�\�\�\�n\�,�r�䥻4\�{�.�n\�\�f�6@�\0�#��t\'�|\�w\r\r\�f�\nq}�U\�>s���0��\�$�m\�\09@�\0�\�m�\�C��K\�p\�Z����\�Y����ka�O��\�\0r��\�᪫.[7g\�T�,�B\\c\�^�f�v���G\09@�\0�m�A\�\�|\�r\�	m}ңG�\nsı0\0� G\0\�@^�T��?,MJz�&8�5f\�UK͗>���G\09@�\0�\��y\�i�EE+h�CP��Kכ��A�.fa\0\�@�\0�#��D��s\�9�\�4\�\'�\�\�ѣG�\�=�\�\�y�#\0\� /ݷ\�>\�\��7\�\��Nw\�g\�ڍ��\�}��� G\0\�@^��A={~/\��\�O=<e\�-�7mz�`CC!\rs;ꫯ�\�[����\�h\�\�\�\�;\��0\0� G\0\�@^��K͚c\�V�\Z�IW.\��;\��\�_q)\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�0` G\09\�\0`\� G\0y�\�\0\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�#\0\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�@�\0�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\09@^\0�0`\�\09\�\0`\� G\0y�\�\0\�#�\�\0y�y�#\0\� /\0X0�x	\0r�#��\0`a\0\�@�\0r�\0`a�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�[���j\'/l� G\0y�!f�Zi�\��2��\�\0r�\0�\�n�\�.2�/l� G\0y�!-4\�\�xyX`\�\09\�����]n�\�6[�Y`\�\09\����]n��\� G\0\�@^\0t�L��\�,�r�\�@���h�x9X`\�\09\��\�c���\�,�r�\�@\'\Z\�6@�\0�#��\0\�*�z���̜8q\�\�\�\�؆޽{��-*�\�ٳ\�w\��gÇ\�h�\��Q\��#rD�\�9\"/@7�lٲ{F�Y�\�̙����TC\�W\��;��%�cQQ�JL|N\r8����{͗�bVp\�E�\�9\"G\��#�D�\�\�W\��\�\�O%%��\\�Fsa\�D��JN^���\��թ��z+8\�\"G\��#rD�\�y�x�|����\�\�B\�[*DU^^���\���{�~�\"G9\"G\��#rD�\�Э,[�����h���py\�ҥ/�1cԨQ׫믿F\�?R%/Jj6\��*/߫N9\�/�\�ߝO�#rD�\�9\"G\��#�tr ��#��OJz\�<��W�X�T���(u\�-cu�s����V\rz�Z�\�\�P�T���?\�իW+8\�\"G\��#rD�\�y�DJ\�11?R.W���h���Q�z�|\�\r#��\�ϮSÇ]i.�c�MOu�\�>�\�O\�Y\�\n9�\�9\"G\��#rD^�(0qℽs\�<i.�nV#�ǩ\�WYoe����\'�W��/�\�.ח~oG���M�w�9KY�!G9\"G\��#rD�\�bc�4\�\�\���fu�\�\���~��nyGe�i�Z�j�Z��F}\\������շ\�~\��vT�\�\�ws��d\'+8\�\"G\��#rD�\�y�@\�޽UC\�\�悡�Y=6\�!U\\�E\�(ުv\�*\�%�w\�خ{\�!���\�_2\�Y\�b�Q\��#rD�\�9\"/@��\�(�e�r���f͚���f�*))T\�\�\�ѵk\�5\��V3�O}��\�~oK���|��\�9\"G\��#rD�\�y�Y\�]\�U����u\�^S��?U\�U��\�\�U��\�j\�嗪\�W����Ϛݞj��C�(rD�\�9\"G\�� �\��p\��6��aCcUMu�z�l�\�ݼQe��G���J��\�K\�B;M\�t啗���\�\�o����\�\n9�\�9\"G\��#rD^��Z0sj\�M�7ea���Y����\�+�/Q//^��^xV=3\�i}��\�/-T\�^3Bm|{�\�}P\�/Vp\�E�\�9\"G\��#�DՂ�\�N=6\�w����\0^��Xג��U�\��\�y\�\�>����#j\�ߪ\'�x\�\\(g�\�ͼ\�\�>��+8\�\"G\��#rD�\�y�j���S�`�������\�i�\��,���?G͝�z\�ٹz\�,\�1�\�朷��T\'+8\�\"G\��#rD�\�y�j�|ԩ�{��G��~y�8�\��]��U\\\��\�	\������\�z\�\��b�Q\��#rD�\�9\�\"Y\�sn�v\Z\0�]0\�U�o�����S��\�\�*a\�uj\��+\�СW��+���\������\�G;�=�\�\��+8\�\"G\��#rD�\�Qb�;���{\���&\�\n9�\�9�\�9\"G\�e�\�l�Ջ�	z��&\�\n9�\�9�\�9\"G\�\ri�\�G\��k�|�\n��╀\�K G9\"G\��#rD��\�r\�w�ٺ\r�o��7*L*JWp\�\��¬$\�\�rD�#rD�\�9\"G\�(l��.7\�\�ڿ`>D�IE\�\nN�\�J�lQ�,\nڌ_rD�\�9\"G䈊�e\Zl\�:k�|�\n�����\0[\�p\�\��#rD�\�9��)Gq\rw�~Ղ�\0&E+8	��\�\�\�\'�#��#rD�\�9\"Ga\��.7[���-��J�IE\�\nN[W^�i\�\��#rD�\�9�\"=G̺Ϭ�fU�Uo�\rf}b�w3�iM�\�\�Z*L*\nVp\�\�R\��\�\"G\�\"G\���\�%?��k5֪��o\�Z)�M\�O�0�_�i\��]]��\�0~\�9\"G\��#*\�rcVvM��\�j\��T@�\��T�T�\�ttw�Hߝ��K�\�9\"G\�Q�����H��ͳ\�j�\'�u�Y}�i��5Ⱥ�\�n\�%\\>�bk7x��*L*BWpZ; M�\��#rD�(rD�(r\�\��w�\�t�\�\�\�\���\�}�{2�\�w���\n����\�>�k�nY`��#rD�\�9\"GT$\�h�O�\\i��f��ܮܧ\�fK7\�|��I�K�߶m�����>}\���\�\�奩#��ɓ�CM�t�Wmܸ\\ee-S-=�\\7mڝm~^�W\'��\�;7\��55\�\�����@׆\r���\�s�߷o�\��%%TYY�>-?jVr\�͞��\�\�9\�\�\�*�~}#h\��`\�{f\�i�\r�\�\�\"��5\���\�:�E�\��9�1�w#�\�_�\�\�}\�\�湆�\�\�h�\0�����JK\�\�A��\�Qze_N\�{\��\�3\�<C-\\��3���\�<o߿�?�k��ӧ�TK�-\�\�t\�\rm~n���P]}ul�\�Hc \�TW\�\����n6,�\��\�^��~o\�\'ޢ�l���F\�?�\��\�;~�rs_\�Ӗ��\�\�/X�^.\�\�X�.�\�B}�}��\�\�/�\�\�s��\�O�e\�d������\�v���C�\�9\na��_\�QQ�#\�Ƹ��mϦ�ܧ�p|�\\\�j;V�t�\�;�\��\�̗�\�={���w7\n?�,=}��R�\�\\i\�b6\n��[��\�\"\��MM\��>\�:\�\�\�\�\�#��G�\�V��\�\�KJ2u3Q\\��.�\�\��\�{�\�W\�\��\�׿\�L\�r}��\�e2�<�Çw�\�\�g\�i�����5k�UL\�\0\�6r���\�\�m�\�ߦ�\���\�\��:���#p\�ư�x\�NԖ�ϕ�&z\\Iߡ#G\��(GTh��#*\�r4\���\��ŝ|�޻��k9p|��q�UW��\Z0��\�\�Z�N9��z��{Un\�:L�&ݪO�{n�\��\�{�\�\�^�F��JM�2\�\\YN\�ӟv\�)fðPUW��=vS�{7Si6ZzN��\�ر\�9\�e��i�y�fz\�i\�zk\�}�>���R���#GJ�i+*6\�\�jk����\�\��\�\�h��F\���\��w\�u���\�ѧ+�\�}�ܻ\�\�sh���@+�VVZZ\��7}��\�#\�;t\���\�\n]�#rDE]�<�n\'��\�x\�`+7\�o�\\\�b\�Օ\�7�����\�\�o�Sa\�\ZU^�Q�w\���\��-s\��yy�Y��\�\���@��g\�[֖�ș��\�\�\'%ӧ���9�a\�\�*&\�_��)j\�����\�\�K�ٳp�+.^�o/[\�<\�\�w��l64���V�Y��\��=--ɹy}bc�]M�6\�l2�\�\�4���\�Yg�i6;�m\�ױ��#D\�X�Ib�\�\�JN[Wn|Wr�bw���V\���\�\n]�#rDEU�Ƿ>���\'��\��\'\�bh�\0�`��M����:�\�tðj\�szW҇��\�����_{Zw�p�>�o_�\�$\�\�46V�@�-��}���V�nj��\�\�e\�e\�&\�2ْ8b\�\�^\�ee-ѻ\�N��_jҤ[t\��\�fd�\��y:T\�ܷ���@n#M���I�\\�\���\�\��\�\�7��\��ȑ\�\�X\�[�_B�`�G\�qm�M[W2Z[\�	v\�\���?\�-m}�\�9\"G!\�u\��#*�rt�\�tY\'����x���Z�^0W�XlS��+Ե\�ƪo�Z��;��y�TS����LΗ��ӷ��\�\�lke�Roɒ��\�\�W�[��\�\�\�\��rz��GZ|~2\���3�]v�\�	^�mܸT\�Ծ�ꫯpNoذؙn��=�\\\�\���[U����V9\�;1�!��\�\�ܦ�~��\�~}\�\�\�\�\�\�T\�q23SZ�_B�`�+��OF�ݍ.\�JN�v�\��n\�\�JN[_+rD�\�Qr\�9��m{\�Ɇ\�\�\�t2\�\�C�ɓow> :�A\�R����\�\�\�nѷ�|<ɩ�\�(/[_\�r}�\�\��8U]�Yh\�\��!�\�y^2PS�\��\'[}m~�7\�i\�\�\�ٳ>�טEw�\�2\�孜\�\�Y�O\�\�tɃ�3�}̾�\��Y�\�	�\��� e�9��\�\�%\�\��y\�\�\�\�S����O=�S��-[^WӦ�Z��=\�Z\�q�\�ȳ	�t��\��6�@�4\��XMM�+\�yY\�-t7\�t���m~i\n.�\���;z�\�\\`�h\�^z�����\\�{l�l\�\�_9竪6y4\�Gv;�\��w?�V=\�u��X�\�\'�\�\�z�\n\�+\�n?l\�e\�B6C_����\�~>���\�\�\�\�\��On\�r\����\��lY�/�\�yy���Zwт\��\�\\�ii%��+7}>\'��\"G\�� GR2f}��̦y�u���ԧ\�G�̙��^\"\�o/{V�?�\n�!{\�c\�\��\�̀\�=��T}��d�:v�Թ\���\�)V\�\�/\�LH�/������)S~\�d\�^V\�ʿ�_�&ݬ�\�^\'qq�\�\�R6�d}\����\\9\�9�f\���nK��\�\�Q��������\�\�s>�O��g\�1\�>�Ƈ��\���>�\�=\�\'L���\�\�Z��7\�ͯ�1j�7\��\�5\�y^\�Ϟ�[��Aɋ��}ʰ\�\��!]�\���Ӳ�\r��\'��W�o���W�^6\�\�\�m{_\�0\�Q�\�\��\�\�3\�\�>�\�􂹲MU]\�����\�m���\�B텤�45U8ӺWr\��m�\�o\��\�)\�\�6��~\�\�q7lH��\�|���\�\�\\.\�ᬳ�?\���#E\����^e�����y.\��\�\nG�nt\�\�\�\�}���\�\�칤�=�Zu\�\�N\�\�\��\�\�i�^�&%=��oh\�km\�\��&S`�i�c�<c6U���\�]�`��d4�>����ӑ�ߕ��0z�\�9\"G!ȑ=�d{\�oY	�\�2`��d\�YƗ�)�1�z�sz\\\�tr�B�{\���\�͛\�5�dѾ���>?�O�s\���c��r�iY\�_y\��X[�\�%k�m%s���s\�\�\�P\�\�~�^�ع�\�8���\�jtr����ܨ���,�\�Q���6�g\��/�̖�26导\'\�u����G9/����cGz5\�vfKJ\�\����%K�V^�#=N,x\�:F\�.\�$W9\�CƬ���>���j٢�!\�m�\�]\�[\�r���\�\�\�:\�r{����sb�\�ط\�\�\�&c\�+��}O��\�\��X\r�Z�^0\�b\�\�\�\���S\�;�m\����22\�9/+\n�\n�}^V��O�S7�%��W�e\�Ç�镆\�´�\�A�s�|\��\�z\�\�SO\�\�l�\�ҵ\�\'�����oP۶�\�[\�,x\�\�={\�t\�X<�����Rsee��\���w�\�\�^�\�ۗK54\�\rD�>���L�5�wO��\Z\�Ն�f�+��㫇�-	U\�\��n�9\"G\�\�\�\�H\�р�d�Կd\��=F\��\�4Ş�q\��\Z5j�\��\�q��z��>�܏d\���7\�\����\�9\r�\�!?T_����O\�_y�C��6��<\Zˬ�g<�p\'\�-𞙐9R�˽5o�>-9�\���e\Z��|�f/+\�\�\�ݤ��\��~\�R���\0\�\�yE���^�\�c\�J�=w\�1F�?45�\�l�ȴ�Qϲ\�\���-\�k�f�\�\�62��v�\���\�RS\�\�Ǫ�\�\�\�Iv\�\�&���\�\�ͼ}{�~\�GN{��~\�\�R�\�lL\���7\�/~\�y���<�}����\�\�~< \�����]��Z�.�$t�����5]kG�\�\����.j8oQ�}�\�9\"G\'8Guu;�ߍ\�\�Z\Z�}�r�\�\�͕��\��x\�\�x�\�>���\�\��\n�\�ݫ|777\�j�+Z��\n�t�sؿ�k��G�i\�\�2�-v+�cef��:/_>\�l8�\Z��V\���\�Ho�4�\�k<K\�a?W�9��\�\��\�o�K\�c?vi\�\Z\��\�.L�x?jӼ��\�h�\�g\\\�\�\�\�\�\�\�II\�\�d,\'\'?f}�i��]\�)z7u{z{�\�l��dڳ���j=��s�p\���\�L\�m\�C�a\�.�z���\�\�󹺛\�\�˔��\��\�\�z�^��������3\�y�~?�c7Х\r��T�T-�}߬}W&\����\�t�w\��V�_rD�B��\�֑̅�_R�V=c�\��P?|�>\�>\��Kδg�y�\�$_�O\�۷\�i�\�i\Z�(\�\�\�\�}\�\�\n��\�c��뮛��>\�\�^\�=Zh\�6[l�\�\�\�-\��}ڕ��\�\\y\�o6>\�\�w7\����\��\�m\�^k6��?u�\�\�ɷ\�\�\��_\�LW\\��&L\�4#��o�\�\��9\"G���T]~��9cMƿ�.+{\�K�\�\�9眭�\���3NdO-s\�ɳ��S�G_��i\�ݲ7;e�\�\�\�֖\�uVS��߱g�[;c�yi�\�\�fO�z�|�\�\�Ը�Pˇ\0˗\�\�_SZ�\�I\�q[z<C\�R�\�ܯ��ƕ\r\�G|�\�چ�<\�\����s��nG�ӯY��9\�ظ\�:�ҫ�\�.%\�V��*\��\�\�Y\�%�K\�Ef��bӑO��Ԋ��\���ӕG�m\�\�\�1���XgBN=�=\�t\�\�\�\�bN<\���<\��\�\�2�JԆ\r�����\�UFF�3��\�^�n�q�����g\�Ӿ\�\r\�ܑ�\�̑�ai�\�)�\�Νfm��_M�r�\�,����oc7ܕ�oY\�-3���><ǝ\�\�\�־�W��\�\�\�ͼ�3\�\�\�\�[�\�\�\�\����\'�+�\�j֬\�8�%+\�G�l5���\�Ƨܷ�?r�\�=v�H_\�;��(�h\�\���*��=�˵\�Yn\�\�\�\�\�s���~䯊�_w>�1,�rWWo�\�\�kL\�\�d�\�\�\�\'cW� M�\��\�{k8���\'\�\r�X�\�\����\�I�n\�e�\��\r\r�\���\�\nW\�ol۶\�j\�\�[\�|�\��`\�\�\�[\�7\�\�r\�\�\�9c_\�\�w�\�\�\�s��F\�Ο?\�\�\��\�hy?\�(\�@\�6\�JJ\�\�&y�Z�`��}��\�J�\��|s%~��\�\�d-����\\����>\�r��Hț�\���f.�S��v��t3.\�\��i)Y`�w9��oY�+\�\�M\�лC�\�9-ׅ\��	т��-�$��\�5m\�wQbt\���\��_U�e5�/;㡴4�\�t�\�;�\�˸\�\���*-\�Y�\"#Y�\�\�[\�\n�\�$&>�?��\�O\�e2�)\�\�s�-��\�o���?ֹ#Gљ����z�o��7\�֑�G:��-i�%\�\�o�\r�6�Q��u��I��\�\�]\��q�\�Y�?�A��\�t7\r�f�����~L{zόUTd\�\�\�1(\�m�\�G�l\�\�#�s�ǲ�*���H\�\�;�%��t�\'ߢO�\�\�G͘q�\��r\�\\\��O�\�k\�]e߱v\�\"G���\�\�?\��1C�L\�z�\��[>ܲǅ\�\�w�\�ȑ-zN\�\�2;[r{C\�u�\�lj78\�p�W?\�\�س\�Θ</{QƱ\������\�G���l\�߳\��Iɠ�\���ڙ�S�F���\�\rtm\�]�:|�@��76�\�rҟc}j��^�\�+���~G��k�LŃ~\�\��\�~�s\�}D\�\�Ӻ�\�:E�nh(QYY\��6s\�\�g�\���\��\�\�\�Դ\'$��\��h\��\�Vn�v�\�ػ�����\��\�9/[����\�\�\�m��/ԧ�\�.,\\e�Hqn\�^�\�u���^+��I�;�\'�՗ٗK\�`\�FV�d\�Ai:�oyx\�Z�ʲ�l��#Gѝ#�x�1{��>\"\�\�sܸ�p_\�?t\��y�}\�~�\�G�nu\�\�é\�o�Y�qe?����uw[�$yq7ǧu7\�e\�\���\�޲eE�\�]��ƶ�\����Ƿjɸ��s�2\��6���w�#ޏ\�w{l\�x��C\��ǹ^Ɨ\���j�2\�SS�\�\��fF������(\�_w\��s]�\�3��\�L\�\�eek�_\�Hu��l�1�\�\�~�;\�ƨ\�.\�u\����{��r����\�\Z\�L\'\�\�л��\Z\�\�G\�rY\�\�e�?�\�\�m\��{��\�{CZ�¬�2\��t�\�d[[�\��\�f�\�y\�b\�wC\�s!�N7\�vs�r\�}��\�mݠ��\�c��:/�!o\�����6a>^mYh\�\�M�+9�㍋��;i7��|Ĉ˼.��v�\�̕�_蕓ŋ\�[�g̘\�\\f\�-=\�\�GY\�\ZsE\�sf�\���\��Y�b=\�\�i��9�![4|W��i��-��p\�9�\�\�\�n\�ͳ�C(�e2\�/�\�_���>a�_\�\�ek��\�t6<Kn�a\���Ǖ��i\�~�)w~�\�\�d��\�q\�\�\�_�+u�՗7{_�\�H 9�i$��(��\r�D\�\�.	8���S�Fr�\����9?~ݨQ\��c�%_\���\���,\�\��^��\�W�ƅ\�{���\�\��i�k��~c�_\�\�,�͂3��\�^q�kN\�|\�+\�\'r?��ؙV\��r�i�=s\"�\�\���\�+Dꩧ\�q޿쪨x\�y\�\�p\�C\�\�(x?\��\�\'\�1��x���Y��`\����ۮ�DL�6^/e��oߟTj\�z!w\�H���k��^\�\�z\��z\ZC\�f��^IZ�\�q��8]_���\�Z�\�y�\�hl,�>�}A�����a?��\\�\�\��\�Ȋ�l-,.^e��,\�\�c?�3�e�ww�;�\�\�\�\�J\�\� �`DM�rs_6W\��\�۪Usu�;cƯ͕e��`i\�l\�d��l�iu7\���2\�%��e�r��a��?�*/_\�l�WU�w�}YI��\�\��D��ڽ`OX\�u�55\�\n\�2��+��/9\�\�G��\�\���\�,G\�<Ʒl\�\�샧]lߊ.5�6p̻CV.\�Ns\��s���us!Wj\�~��\�L\�[\�\�\�\�u;�\'����\�FkW���\�nd��E\��\�n֧�I��\�^Ӯ^=\��\���1xQ߿}{��\�\�14��9�W\��-�++mY�1Z�](j�KsTW�M�{���\rI\���QU�i6�;���\�\�\�y�\�\�\�FX\�5]m\�&�_���7\����\�\�z�\�x�\�\�\�<>�L�E\�n˖ea�;r\��rD�~D�\�9j�|���\�輟��+7��n�2\0\�\�]!��z�o#\�x\�p�)x\�j&޴v�K\�\�o\"�\�\�\�\�x\�9=u\�m\������\�\"}Z\�}D\�\�\�._��\�}o޼�����\"\��<\�\�\�\�\��rrC��D\�\n�\�J\�����F�?�\�{���\�jD\�\�\�\�m�}��n�\�@�p\�\�؋ԤIc�8�1{\���\�&�\�o[߁]\�wCN�J�\�/�\�_���\���s�2\�\�\�#t�~�\�6w\�Q��#��c��\n�l�;\�tK���\�`-\�`.\rY56y4�\�ֵuցd^q�𼼗�nw�\�.UG��<s\�)\'�\rɖf�a\�#�ƚ+��-m\��i�]\'8\�\�\��I�\\;�Ͼ\�455��ϖ\�\�\�\�\�!Z\�\�\'\�Vp��\�tƖ��8�kX\�\�ȑw�,\��mۖY\�\�\�\�\�\�\�4\�,�\�^-jv��V\�V+W>�\�\�\�\�\n\n��\r��A�LUWg6�y��o\��=�K\�\�Q�\�\��9b���\�\�vy\��-[�ۻ{�\�\�s\�6��]�`nhp�\\��j��\�\n�{�[�nrr^����\�\��q\�f$#\�9\'\�l\n���\�ima8a\�ϝ\�\'GT���x\�:�\��`%��W�\"*Gv6\�\�穦�}�\�`ذoq�H\�\�{YVVR�i\��\�z^��h;;�;C\�Ν\��1,��uC�&\�\�\�4��2w\��\�\����#r\�&�|�n9-R\�\�\�\�\�t\��܇\�#�V@�4ܲUK\�{n\�\�\�m���\�M��\��\�\���\�\�\�o\Zy�\�\���Eo}�\�\"�-\���co	\�\�nw��\�^�娴�5�\�j{\�\�\�Y�\�r>�ji�ػ��w�^h횝\�wz��JK��#�\�$2�\�6)\�A\�\0kl\�8\�\�ܑ�\�#��#rD�\�QP\�[c]�4\�YVC.[�\�\�\�e��A\�m\�0ܻ�{ޮκ\r�\�`��vt\Z\�A���E \�H69\n��N�#G\�\"G\�\"Gmcx��=�\�\�;\�\0f\�!\�nx��\�9\"G\��#rD��h\�\�mV\�\�\n�ўdp4r�3\�]\�b�wA\ZG�(rD�\�9\"G\�u�f=`\�Z�>1���\�阮{w�{\�8\0\�,��P���\�\���E\�\�\r9\"G\��#rD��h\�\0\�,�#h\�B�\�G�\�9\"G\��#��\0f\�a���+7\��#rD�\�9�h��`f�ܥ+9IQ�rC�\�9\"G\��#��\0f\�]&��\�\�E�\�9\"G\��#\04\�\�\�ՇQ\��#rD�\�9@\�M�`9\"G G\�\�\"G\0X0�`9�\�9�\�\�9���b�L�(rrD�@�\�\0\�f�#rrD�@�(r�3f�#rD�\�E�\�E�\0�`�X0�#���#�#r�3ł\���#�#�`�̂\��Q\�Q\�\0f�39�\��\�\��.\'�|\�w\r\r�,à��j�>s���\�\"G\�\"G G\�@<�Ǉ��`�Z����\�Y��QI�(rD�(rrD�\0D����lݜ9SY0�A�{U�9K�\�\"G\�\"G G\�@0\����˵��c\�\�\'=z��0gI��Q\�1�\�\�9%���aiR҃,��ƌ�j�9+r�\�\"G\��#�#r �:�\�\�ꋊV��\�\�\�_�ޜͺ��H�(rD�\�99\"G\0�O�9\��wΡ_(�\�ѣ\�|�\�0\�E�@�\�\�9\�\�N���y�\���\����\��X�d�L�(rrD�@�\��\�aPϞ\�\�9��SO�r\�\�M�^<\�\�9v\�\�1\�OD\�Q+�i\�w{\�݈Q\�\���#\0\�̥f\�1k�Y\rf)�\�\�2ܿ\�(?�Q+\�E�@�\�\�9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\���9��\�6BX\0\0\0\0IEND�B`�',0),('e6a33d903772421a97cd3d4c531156b7',1,'test_audit.bpmn20.xml','809b52df107d48c98625937c3f17b1e9','<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"流程审批测试流程\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"启动审批\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"结束审批\"/>\r\n    <userTask id=\"modify\" name=\"员工薪酬档级修改\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"薪酬主管初审\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"集团人力资源部部长审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"集团人力资源部分管领导审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"集团总经理审批\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"薪酬档级兑现\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"是\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"是\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"否\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"是\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"重新申请\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"是\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"否\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"否\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"否\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"销毁\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','1',1),('schema.history','create(5.21.0.0)',1),('schema.version','5.21.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('809b52df107d48c98625937c3f17b1e9','SpringAutoDeployment',NULL,'','2017-11-14 04:42:37.285');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('test_audit:1:a0b53ecd268c42b2ba57bca3f5d1078c',1,'http://www.activiti.org/test','流程审批测试流程','test_audit',1,'809b52df107d48c98625937c3f17b1e9','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,1,'');
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('1','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','文章标题标题标题标题',NULL,'red',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','文章标题标题标题标题',NULL,'blue',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_data`
--

DROP TABLE IF EXISTS `cms_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_data`
--

LOCK TABLES `cms_article_data` WRITE;
/*!40000 ALTER TABLE `cms_article_data` DISABLE KEYS */;
INSERT INTO `cms_article_data` VALUES ('1','文章内容内容内容内容','来源','1,2,3','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('2','文章内容内容内容内容','来源','1,2,3','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('3','文章内容内容内容内容','来源','1,2,3','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3','1'),('8','文章内容内容内容内容','来源','1,2,3','1'),('9','文章内容内容内容内容','来源','1,2,3','1');
/*!40000 ALTER TABLE `cms_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_category`
--

DROP TABLE IF EXISTS `cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_category`
--

LOCK TABLES `cms_category` WRITE;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` VALUES ('1','0','0,','0','1',NULL,'顶级栏目',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','1','0,1,','1','4','article','软件介绍',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,10,','1','4','article','网络工具',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,10,','1','4','article','浏览工具',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','10','0,1,10,','1','4','article','浏览辅助',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','10','0,1,10,','1','4','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','10','0,1,10,','1','4','article','邮件处理',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','10','0,1,10,','1','4','article','下载工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','10','0,1,10,','1','4','article','搜索工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','1','0,1,','1','5','link','友情链接',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','18','0,1,18,','1','5','link','常用网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','1','3','article','组织机构',NULL,NULL,NULL,NULL,NULL,10,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','18','0,1,18,','1','5','link','门户网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','18','0,1,18,','1','5','link','购物网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','18','0,1,18,','1','5','link','交友社区',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','18','0,1,18,','1','5','link','音乐视频',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','1','0,1,','1','6',NULL,'百度一下',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','0,1,','1','6',NULL,'全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','1','0,1,','2','6','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','1','0,1,','1','6',NULL,'公共留言',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','1','3','article','网站简介',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','1','3','article','内部机构',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','1','3','article','地方机构',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','1','3','article','质量检验',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','6','0,1,6,','1','3','article','产品质量',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','6','0,1,6,','1','3','article','技术质量',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','6','0,1,6,','1','3','article','工程质量',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comment`
--

LOCK TABLES `cms_comment` WRITE;
/*!40000 ALTER TABLE `cms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_guestbook`
--

DROP TABLE IF EXISTS `cms_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_guestbook`
--

LOCK TABLES `cms_guestbook` WRITE;
/*!40000 ALTER TABLE `cms_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_link`
--

DROP TABLE IF EXISTS `cms_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_link`
--

LOCK TABLES `cms_link` WRITE;
/*!40000 ALTER TABLE `cms_link` DISABLE KEYS */;
INSERT INTO `cms_link` VALUES ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES ('1','默认站点','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','子站点测试','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_scheme`
--

DROP TABLE IF EXISTS `gen_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：Delete）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_scheme`
--

LOCK TABLES `gen_scheme` WRITE;
/*!40000 ALTER TABLE `gen_scheme` DISABLE KEYS */;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b','树结构','treeTable','com.thinkgem.jeesite.modules','test',NULL,'树结构生成','树结构','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9c9de9db6da743bb899036c6546061ac','单表','curd','com.thinkgem.jeesite.modules','test',NULL,'单表生成','单表','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e6d905fd236b46d1af581dd32bdfb3b0','主子表','curd_many','com.thinkgem.jeesite.modules','test',NULL,'主子表生成','主子表','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：Delete）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f','test_data_main','业务数据表','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','业务数据子表','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','业务数据表','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','树结构表','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：Delete）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','性别','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','ID','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','所有父级编号','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','ID','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','删除标记（0：正常；1：Delete）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','Update Time','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','Update Time','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','删除标记（0：正常；1：Delete）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','删除标记（0：正常；1：Delete）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','ID','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','名称','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','Update Time','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','排序','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','业务主表','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','Recomment','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','Recomment','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','父级编号','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','Recomment','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','ID','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','性别','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','删除标记（0：正常；1：Delete）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','Update Time','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','Recomment','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_template`
--

DROP TABLE IF EXISTS `gen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：Delete）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_template`
--

LOCK TABLES `gen_template` WRITE;
/*!40000 ALTER TABLE `gen_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) DEFAULT NULL COMMENT '请假理由',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `reality_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `reality_end_time` datetime DEFAULT NULL COMMENT '实际结束时间',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假流程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify`
--

DROP TABLE IF EXISTS `oa_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify`
--

LOCK TABLES `oa_notify` WRITE;
/*!40000 ALTER TABLE `oa_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify_record`
--

DROP TABLE IF EXISTS `oa_notify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify_record`
--

LOCK TABLES `oa_notify_record` WRITE;
/*!40000 ALTER TABLE `oa_notify_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_test_audit`
--

DROP TABLE IF EXISTS `oa_test_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_test_audit` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批流程测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_test_audit`
--

LOCK TABLES `oa_test_audit` WRITE;
/*!40000 ALTER TABLE `oa_test_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_test_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','Australia',10,'100000','1','1','2013-05-27 08:00:00','1','2019-10-02 18:58:16','','0'),('2','1','0,1,','South Australia',20,'110000','2','1','2013-05-27 08:00:00','1','2019-10-02 18:58:22','','0'),('3','2','0,1,2,','Adelaide',30,'110101','3','1','2013-05-27 08:00:00','1','2019-10-02 18:58:27','','0'),('4','3','0,1,2,3,','City',40,'110102','4','1','2013-05-27 08:00:00','1','2019-10-02 18:58:41','','0'),('5','3','0,1,2,3,','Norwood',50,'110104','4','1','2013-05-27 08:00:00','1','2019-10-02 18:58:49','','0'),('6','3','0,1,2,3,','Genleg',60,'110105','4','1','2013-05-27 08:00:00','1','2019-10-02 18:59:04','','0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('1','0','Normal','del_flag','删除标记',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:35:20','正常','0'),('10','yellow','YELLOW','color','颜色值',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:35:01','黄色','0'),('100','java.util.Date','Date','gen_java_type','Java类型\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Java类型\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Java类型\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Java类型\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Java类型\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','会议通告\0\0\0\0','oa_notify_type','通知通告类型',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','奖惩通告\0\0\0\0','oa_notify_type','通知通告类型',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','活动通告\0\0\0\0','oa_notify_type','通知通告类型',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','ORANGE','color','颜色值',50,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:35:09','橙色','0'),('110','0','未读','oa_notify_read','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','Default theme','theme','主题方案',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:40:27','默认主题','0'),('13','cerulean','BLUE Theme','theme','主题方案',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:40:34','天蓝主题','0'),('14','readable','ORANGE Theme','theme','主题方案',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:40:46','橙色主题','0'),('15','united','Red Theme','theme','主题方案',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:41:19','红色主题','0'),('16','flat','Flat Theme','theme','主题方案',60,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:41:09','Flat主题','0'),('17','1','Country','sys_area_type','区域类型',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:36:30','国家','0'),('18','2','Province、State','sys_area_type','区域类型',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:36:46','省 直辖市','0'),('19','3','City','sys_area_type','区域类型',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:37:17','地市','0'),('2','1','Deleted','del_flag','删除标记',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:35:26','Delete','0'),('20','4','County','sys_area_type','区域类型',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:37:14','区县','0'),('21','1','Company','sys_office_type','机构类型',60,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:43','公司','0'),('22','2','Deoartment','sys_office_type','机构类型',70,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:49','部门','0'),('23','3','Group','sys_office_type','机构类型',80,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:55','小组','0'),('24','4','Other','sys_office_type','机构类型',90,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:40:00','其它','0'),('25','1','Grovenment','sys_office_common','快捷通用部门',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:33:03','综合部','0'),('26','2','Techonology','sys_office_common','快捷通用部门',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:33:16','开发部','0'),('27','3','Other Office','sys_office_common','快捷通用部门',50,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:33:33','人力部','0'),('28','1','Level One','sys_office_grade','机构等级',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:32:24','一级','0'),('29','2','Level Two','sys_office_grade','机构等级',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:32:31','二级','0'),('3','1','Display','show_hide','显示/隐藏',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:36:13','显示','0'),('30','3','Level Three','sys_office_grade','机构等级',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:32:38','三级','0'),('31','4','Level Four','sys_office_grade','机构等级',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:32:45','四级','0'),('32','1','All DATA','sys_data_scope','数据范围',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:37:32','所有数据','0'),('33','2','GET the data belong Company','sys_data_scope','数据范围',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:38:07','所在公司及以下数据','0'),('34','3','Get the data in this Company','sys_data_scope','数据范围',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:38:10','所在公司数据','0'),('35','4','Get Data under the department','sys_data_scope','数据范围',40,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:38:56','所在部门及以下数据','0'),('36','5','Get the data in this department','sys_data_scope','数据范围',50,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:06','所在部门数据','0'),('37','8','Get the data of current user','sys_data_scope','数据范围',90,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:19','仅本人数据','0'),('38','9','Specific Setting','sys_data_scope','数据范围',100,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:39:29','按明细设置','0'),('39','1','System Manager','sys_user_type','用户类型',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:30:40','系统管理','0'),('4','0','HIDE','show_hide','显示/隐藏',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:36:19','隐藏','0'),('40','2','Department Manager','sys_user_type','用户类型',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:30:50','部门经理','0'),('41','3','Ordinary User','sys_user_type','用户类型',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:32:02','普通用户','0'),('42','basic','基础主题','cms_theme','站点主题',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','蓝色主题','cms_theme','站点主题',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','红色主题','cms_theme','站点主题',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','文章模型','cms_module','栏目模型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','图片模型','cms_module','栏目模型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','下载模型','cms_module','栏目模型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','链接模型','cms_module','栏目模型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','专题模型','cms_module','栏目模型',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','YES','yes_no','是/否',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:33:50','是','0'),('50','0','默认展现方式','cms_show_modes','展现方式',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','首栏目内容列表','cms_show_modes','展现方式',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','栏目第一条内容','cms_show_modes','展现方式',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','Published','cms_del_flag','内容状态',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:14','发布','0'),('54','1','Delete','cms_del_flag','内容状态',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:31','Delete','0'),('55','2','Checking','cms_del_flag','内容状态',15,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:23','审核','0'),('56','1','首页焦点图','cms_posid','推荐位',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','栏目页文章推荐','cms_posid','推荐位',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','咨询','cms_guestbook','留言板分类',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','建议','cms_guestbook','留言板分类',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','NO','yes_no','是/否',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:33:57','否','0'),('60','3','投诉','cms_guestbook','留言板分类',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','其它','cms_guestbook','留言板分类',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','公休','oa_leave_type','请假类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','病假','oa_leave_type','请假类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','事假','oa_leave_type','请假类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','调休','oa_leave_type','请假类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','婚假','oa_leave_type','请假类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','请假流程','act_type','流程类型',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','RED','color','颜色值',10,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:40','红色','0'),('70','test_audit','审批测试流程','act_type','流程类型',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','分类1','act_category','流程分类',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','分类2','act_category','流程分类',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','增删改查','gen_category','代码生成分类',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','增删改查（包含从表）','gen_category','代码生成分类',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','树结构','gen_category','代码生成分类',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','查询方式',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','查询方式',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','查询方式',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','查询方式',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','GREEN','color','颜色值',20,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:48','绿色','0'),('80','between','Between','gen_query_type','查询方式',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','查询方式',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','查询方式',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','查询方式',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','文本框','gen_show_type','字段生成方案',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','文本域','gen_show_type','字段生成方案',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','下拉框','gen_show_type','字段生成方案',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','复选框','gen_show_type','字段生成方案',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','单选框','gen_show_type','字段生成方案',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','日期选择','gen_show_type','字段生成方案',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','BLUE','color','颜色值',30,'0','1','2013-05-27 08:00:00','1','2019-10-03 00:34:54','蓝色','0'),('90','userselect','人员选择\0','gen_show_type','字段生成方案',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','部门选择','gen_show_type','字段生成方案',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','区域选择','gen_show_type','字段生成方案',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Java类型',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Java类型',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','仅持久层','gen_category','代码生成分类\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','MALE','sex','性别',10,'0','1','2013-10-28 08:00:00','1','2019-10-03 00:35:44','男','0'),('97','2','FEMALE','sex','性别',20,'0','1','2013-10-28 08:00:00','1','2019-10-03 00:35:53','女','0'),('98','Integer','Integer','gen_java_type','Java类型\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Java类型\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('00e57088fc2b4a65a4eac3f1dd14367e','1','在线办公-通知通告-我的通告','1','2017-11-14 15:16:44','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/oa/oaNotify/self','GET','',''),('01ded0b44b664cb1bbd438cd5814d0b0','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:46:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=27',''),('02dc0d54b5c941efbc1f52cf07ff4f22','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:45:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','office.id=1&office.name=山东省总公司',''),('034604c8d19441fbb42521486dce3a5c','1','系统设置-系统设置-菜单管理-update','1','2019-10-02 18:46:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=DashBoard&href=&target=&icon=&sort=100&isShow=1&permission=&remarks=我的面板',''),('0348911b6e2748a7bfe246443d9276ff','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:04:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=13',''),('0378e0e2b3f4428295b4d74d8949cb64','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:32:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=30',''),('043e7e30ede3477c8c7170cd99b5d811','1','内容管理-内容管理','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('045ff03b1c9e4d8288c65e8eae90c6ce','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:41:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=16',''),('0478e2123d4d465c858032bd27c23ad2','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=4',''),('057d4bfa67e148c3bcf13225f0af29a3','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('05d9a71d9abc44259c650b396d56c325','1','System Setting-office User-User Management-查看','1','2019-10-02 18:57:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('05da0b478297425fb97f4f9ae4f85bdb','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=8',''),('065601bb111648aeb01e367334c3fd39','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:36:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=17&value=1&label=Country&type=sys_area_type&description=区域类型&sort=10&remarks=国家',''),('065a8281716d41ffae650a59bfa23577','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:56:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('068eab30bf8141ad860a4cebb1a8d054','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('07d13e8f5cfd4a40859acbf44547ed88','1','System Setting-System Setting-Menu Management-update','1','2019-10-02 18:49:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=10&parent.id=3&parent.name=System Setting&name=Dictionary Management&href=/sys/dict/&target=&icon=th-list&sort=60&isShow=1&permission=&remarks=字典管理',''),('082933c73bee42d7bb192606b80302ec','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:36:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=17',''),('08a4d0f77af843a49dcb04484c72771e','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:30:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=39',''),('08bfb958fe7e4ab68a30d5627c014dae','1','System Setting-office User-Office Management-update','1','2019-10-02 19:05:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=16&parent.id=12&parent.name=City Concil&area.id=4&area.name=City&name=City Area Technology Department&code=201004&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('08e18dd9448b44d08afbb274ccd718ae','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:46:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=28',''),('0a4cc6afcc1c43cd8c56dc7308ef3f51','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=97',''),('0ab0a964dc974869a6b3163640768b70','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:36:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=19',''),('0c8359ecd81c489188086b416af4fc09','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:38:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=33&value=2&label=GET the data belong Company&type=sys_data_scope&description=数据范围&sort=20&remarks=所在公司及以下数据',''),('0d00aa19ed25436a9d741088df25f928','1','我的面板-个人信息-个人信息','1','2017-11-14 15:15:11','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0d0a82df77604201b78cab109a7627fc','1','System Setting-office User-User Management-查看','1','2019-10-02 18:55:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('0d241d2a853c43fc824502e436cc73ef','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:40:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=13',''),('0d4ae2a475974798b4df7f7065c7dc1a','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=16',''),('0e0ec5d585c049889b36c0de504ff6b6','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=12&parentIds=0,1,7,12,',''),('0e22c0665338489a87cdfa4503cae743','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=54',''),('0e77654c600848ba9df2d9aec8af68de','1','System Setting-office User-Office Management-update','1','2019-10-02 19:54:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=26&parent.id=22&parent.name=Genleg Council&area.id=6&area.name=Genleg&name=Genleg Level Techonology Department&code=201014&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('0e83623e4989475b82f36143697d4733','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 19:05:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('0e9187e766a24959a70e483df712a5b8','1','系统设置-系统设置-菜单管理-update','1','2019-10-02 18:47:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=28&parent.id=27&parent.name=DashBoard&name=Personal Information&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=个人信息',''),('0f3952f9b46344b9ba0944716d0b60d1','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:22','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('0fb9efa76ffd4321aaa6348306863d3b','1','System Setting-office User-Office Management','1','2019-10-02 19:56:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('108070515b80404087bd1b70089c619e','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=theme',''),('109eb574a3cc4d0ab575d5239829dccb','1','System Setting-office User-Office Management','1','2019-10-03 00:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('11361cc870f2458298e94da83bfbe57b','1','System Setting-office User-Area Management','1','2019-10-02 18:58:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('1148c650eee64b1f8689a7ed5abaa765','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:36:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=3&value=1&label=Display&type=show_hide&description=显示/隐藏&sort=10&remarks=显示\r\n',''),('127da74a86bb4aa8b994fb8bd2e0f54e','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:41:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=15',''),('12c05c88127840ff9a144479e8cef35a','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_type',''),('12e62bcee18f4fed918b4c0292fd4c46','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:14:19','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('131bb209d79e46f8bbfc72299c5c02c8','1','内容管理-内容管理-内容发布','1','2019-10-02 18:57:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/','GET','',''),('14f943ac34d347aebea42a81f894b06c','1','内容管理-内容管理','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/none','GET','',''),('15335ac6a9a84afb8e76f8c75c55c44d','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=11',''),('1584287d3a83435aa9edf11deecf158a','1','内容管理-内容管理','1','2019-10-02 18:44:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/none','GET','',''),('1593d9b838b74109918491648cb50b7e','1','System Setting-System Setting-Menu Management','1','2019-10-02 19:02:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('159ef445ae9f44518ae7ea4fcc46f79e','1','System Setting-系统设置-菜单管理-查看','1','2019-10-02 18:48:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=17',''),('15b8180906964e7eaf9195089990983e','1','System Setting-office User-Office Management','1','2019-10-02 19:04:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('15e0c6cf201b4e7092c1eb7a9d9c6b07','1','System Setting-office User-User Management','1','2019-10-02 19:50:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('16896343354a49468f8bceef8c0e3a79','1','System Setting-office User-Area Management','1','2019-10-02 18:58:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('16d1dd0e0da04cd384bc7fce6774f197','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=96',''),('16f6325e827d456cb6dc92cc9deec1ca','1','System Setting-System Setting-Menu Management','1','2019-10-02 18:49:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('1725cde59aed4069a2b21ee5dd7eb195','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:32:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=29&value=2&label=Level Two&type=sys_office_grade&description=机构等级&sort=20&remarks=二级',''),('17569f66de9443cca19177a65b41ee21','1','内容管理-内容管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/none','GET','',''),('17829dbc32b0427a9543a2e1dceac25b','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('179ebd95a3b042a0801e902deb6dc07a','1','内容管理-内容管理','1','2019-10-02 18:57:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/none','GET','',''),('17a2f494edbe4d6e9da355c54403195e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:54:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('18254ea5e0294e26bae24aa4cb376f3b','1','System Setting-系统设置-菜单管理','1','2019-10-02 18:48:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('1860f5f980524515ac038142ccacb432','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=6',''),('18f468568b3c405c8f72dc9da1d7d1d1','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_type',''),('192eb60631a64070b718a2bfa8ed9be3','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:41:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=15&value=united&label=Red Theme&type=theme&description=主题方案&sort=40&remarks=红色主题',''),('1946b9ba3fc84723a9f1ee60d17e3bd0','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('19f45a9b75a343f1ad9fe548fa77bd54','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('1a40065888824fdca3d85823c5641dd7','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:38:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('1ad9692f36f24a83b2744c935b818d60','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=18',''),('1c3abe1255564b878e7c4cb948e8c367','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 20:02:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=6',''),('1ccc6e3265c34480a34408313a0780d4','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 18:49:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('1d3217e69a544a2799c5139416c2c395','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:57:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=3',''),('1d3edac47216467fbc6138baabfff713','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:58:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=5&office.id=1&office.name=South Australia Province&oldName=本部门管理员&name=Middle Level Officer&oldEnname=c&enname=c&roleType=assignment&sysData=1&useable=1&dataScope=5&menuIds=&officeIds=&remarks=',''),('1d4309edcc9b466d9b4aa8c944c58ed6','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('1ddabc8a032d4feebccfb2dbd4d5e8ad','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:52','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('1ded03cce25542619e1d0fe83233edce','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=show_hide',''),('1e12bf4172cb490c9b597b6859382d1a','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:52:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=23',''),('1e5ed9d4fe4c471cb5bd3dad04f6056f','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:12','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('1e8dee888b0a4729a72edb1570aed1a7','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=25',''),('1e977c7d32884c7c8774228db175c120','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=54&value=1&label=Delete&type=cms_del_flag&description=内容状态&sort=20&remarks=Delete',''),('1f57bc5fe5e0425e9d948317fd421d0d','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:30:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=40&value=2&label=Department Manager&type=sys_user_type&description=用户类型&sort=20&remarks=部门经理',''),('1f5b9b8010e145448f6013382f89a034','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:58:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=5',''),('1f66c7b7572b439ba61b6c8827a4e83a','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:30','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('2050a1d8789b4ed7a6bbf62056a0de03','1','System Setting-office User-Office Management-update','1','2019-10-02 19:05:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=13&parent.id=12&parent.name=City Concil&area.id=4&area.name=City&name=City area leader&code=201001&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('20bb48e0c03446ba807f67b1e70c6a48','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:38:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=35&value=4&label=Get Data under the department&type=sys_data_scope&description=数据范围&sort=40&remarks=所在部门及以下数据',''),('20e4ee36fffa4e6c9ad594fdc4e0d8fc','1','System Setting-System Setting-Menu Management','1','2019-10-03 00:42:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('2101451eb9424170b63dbb9e4f81bee6','1','内容管理-内容管理','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('217da2e653e1459685d4b8853c160e29','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=23',''),('21d9b32036fe4fc8848c779f14a996fe','1','System Setting-office User-Area Management','1','2019-10-03 00:29:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('223317da113c49a5b3caef3fe92926c9','1','System Setting-System Setting-Menu Management-update','1','2019-10-02 20:03:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=&parent.id=c965e900251c442699226325929168a8&parent.name=Vote&name=Vote&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=投票功能',''),('225107805ee744b385f4f103707ad736','1','DashBoard-Personal Information-Personal Information','a5c75a64e01f437f9d0b00d5c2eb2f38','2019-10-02 20:06:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('22de910581134cad96126d2bad4992d7','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('232c4354906341b9970ab12edcf3f2ad','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:56:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=6&office.id=1&office.name=South Australia Province&oldName=普通用户&name=Normal Voter&oldEnname=d&enname=d&roleType=assignment&sysData=1&useable=1&dataScope=8&menuIds=&officeIds=&remarks=',''),('234a3e8466974b57abdf75c0b8780db9','1','System Setting-office User-User Management-查看','1','2019-10-02 19:02:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('23e7adc9b619475bb06ba6bbea495f8b','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:32:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=29',''),('24814bebe05248d38bf75b544c492952','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:47:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('254d1a2006a64a4fbadc18dd8b564e86','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=15',''),('259a5a6ae3a645a78aeb5f1ad0eece63','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_grade',''),('263a541f72a8476bb89a9dea1c394c64','1','System Setting-office User-Area Management','1','2019-10-02 19:04:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('2718775cfc4b478da43a63dcfadbc418','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:44','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('29974e6aea354afcb2a519123fb7c8c2','1','我的面板-个人信息-个人信息','1','2019-10-02 18:44:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('29bb587993ec40bbacf0a573937d0318','1','System Setting-office User-Area Management-update','1','2019-10-02 18:59:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=6&parent.id=3&parent.name=Adelaide&name=Genleg&code=110105&type=4&remarks=',''),('2a2796681fd9492f8236bfb5a33f63b2','1','内容管理-内容管理-内容发布','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/','GET','',''),('2acb1d310d0d437f9d1fc18075ac1794','1','System Setting-系统设置-菜单管理','1','2019-10-02 18:48:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('2ade1990a32a4fa58eda3296c08d08ef','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:40:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=14&value=readable&label=ORANGE Theme&type=theme&description=主题方案&sort=30&remarks=橙色主题',''),('2b585e1e49fc47ef9b5cb1510a4ffa62','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:56:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=6',''),('2b5a1010b459444a9766da459caf4f37','1','System Setting-office User-Area Management-update','1','2019-10-02 18:58:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=5&parent.id=3&parent.name=Adelaide&name=Norwood&code=110104&type=4&remarks=',''),('2b730823150b40e2bb6ff004fb6ada6a','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('2b9e826b9af541d7975b141e55646e30','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=26&value=2&label=Techonology&type=sys_office_common&description=快捷通用部门&sort=40&remarks=开发部',''),('2b9fe9cce17d47029c65dcad1b25362e','1','System Setting-office User-User Management','1','2019-10-02 18:57:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('2cbc926c35924f3d9ed1b66924ce6f2f','1','System Setting-office User-User Management-查看','1','2019-10-02 19:54:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('2d0ae30d7a9e4ebaa5840a8a8dc40c63','1','System Setting-office User-Office Management-update','1','2019-10-02 19:05:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=15&parent.id=12&parent.name=City Concil&area.id=4&area.name=City&name=City Area Marketing Department&code=201003&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('2d32da04854c4f45b6fd74248c69d5ea','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=color',''),('2df1ce50648e40a78a8c983e6d064ed8','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=9',''),('2e3838ea71bf44e0ab5947f65125c935','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=theme',''),('2e5288d55b234bc5ac3a92af17044206','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:31','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('2e7720603fba4c468fee0a1872659349','1','我的面板-个人信息-个人信息','1','2019-10-02 18:44:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('2f283975404e44d0954a85260c28d7ce','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('30c29231b815481da454d5cc6ad1c3bb','1','System Setting-System Setting-Role Management','1','2019-10-02 19:58:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('3148169938d942d8817cc3af02e94441','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:22','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('3185b49266324d949d091fa96c83ec08','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:30:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=40',''),('325600f46f1e4388afd3acb1e1010479','1','System Setting-System Setting-Role Management','1','2019-10-02 19:56:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('32a94294a4c24623b731f3e6263d1fae','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:38:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=35',''),('32d13d3c82604e4f9923d41be03a29e1','1','DashBoard-Personal Information-Personal Information','1','2019-10-03 00:29:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('32f994d98f3a45eeae29e11d65711350','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=17',''),('338d054b608d496696ddbe329ec3d5ce','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=cms_del_flag',''),('33c1cd24a13c481d989f552170a3e30d','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:37:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=34',''),('343de395ee034dccad92fd37341173b1','1','系统设置-机构用户-区域管理','1','2019-10-02 18:44:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('34bb573f1a48436f962596b76e6e850b','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:59:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('34cca337d3704564b1db99d0ca21b0a2','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:55:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('3527abefb42441d5958600e9db3cb373','1','系统登录','1','2019-10-03 00:29:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('352f19f9ed9c4ab6a2e34f97b62ed3e1','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:34','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('354657894fce4df88ed4f1037f959ca0','1','System Setting-office User-Office Management','1','2019-10-02 18:59:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('356df06a422f4370a7f6e29d32675f21','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('361c44f09392405d824074339e40d8d8','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=38&value=9&label=Specific Setting&type=sys_data_scope&description=数据范围&sort=100&remarks=按明细设置',''),('37512f15941b45a7a1b97bcb6b224e9a','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:37:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=33',''),('3792956da9c84bc7b7afcd55e648bce9','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:03:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('37ad2c6892bb4933bf89f4af36a629a8','1','System Setting-System Setting-Role Management','1','2019-10-02 19:58:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('37fabe30e73047ca8a2c1848e7079717','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:47:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=29',''),('38a14577c4244ed3a483d87a0ffe0a4f','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:58:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=2&office.id=1&office.name=South Australia Province&oldName=High level admin&name=Highest level admin&oldEnname=hr&enname=hr&roleType=assignment&sysData=1&useable=1&dataScope=2&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=',''),('38d4277999234d4eb457a1027d541bab','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:03:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('38e434ca7e02429e8ec6f0bf5ce90864','1','System Setting-office User-User Management','1','2019-10-02 18:57:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('393ba3fccadd4d8c95db13943d07dcaa','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=37&value=8&label=Get the data of current user&type=sys_data_scope&description=数据范围&sort=90&remarks=仅本人数据',''),('3a76e65bbc3848d6995f3129a71ccc22','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('3a78bd21e92b4717ac4945ce3eca8daf','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=21',''),('3b1999e617584132b39c50d259f65755','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:33:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=27',''),('3b40fc3a86ec4ce0859b4b945824deb4','1','System Setting-office User-User Management','1','2019-10-02 19:56:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('3b4e9284217a4ad0a5c43a70c3625869','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=38',''),('3bea21ad610c4d49a79214de484294e2','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_common',''),('3c6fd740952949a49f6c72c222bc6373','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:47:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=30',''),('3cbf04535f1248c090bef28f9a37b6e8','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=23&value=3&label=Group&type=sys_office_type&description=机构类型&sort=80&remarks=小组',''),('3cfb1080fee04a71adf2f6652b0dee77','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:45:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('3d512465328f4b74ae9d6f31391258fa','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=cms_del_flag',''),('3d532c169fcd441198cef33a2d693733','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:36:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=4',''),('3e7aa36306ce49f19726224e37393c25','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:38:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('3e9fe63a6a1a46f4a4c2fd84ca2d0da5','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('40026ce821ba426e92b5b4c870ce47a3','1','System Setting-System Setting-Menu Management','1','2019-10-03 00:42:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('401b0bae7f254c80b868d7e615b54da8','1','System Setting-office User-User Management-查看','1','2019-10-02 20:04:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('40dceacbfd9643ae8ced71aab72233e1','1','System Setting-office User-Office Management-查看','1','2019-10-03 00:29:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('419c166ff7aa4631ba4ce7672a696cbc','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=14',''),('422e7d8d102241c58393018b464f9016','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:59:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=7',''),('430413efc35f48808b6f72b40064e0cd','1','System Setting-office User-User Management','1','2019-10-02 18:55:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('43fcf5497dda4b588bc9be701462172b','1','System Setting-System Setting-Role Management','1','2019-10-03 00:42:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('4419f8d693004a89805aa503c10a9f07','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:47:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=2',''),('453c84b454324e13a32311c2c336b4e3','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=24',''),('455db0e16c9b484eb41efe8652bf0b60','1','System Setting-office User-Office Management-update','1','2019-10-02 19:07:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=19&parent.id=17&parent.name=Norwood Council&area.id=5&area.name=Norwood&name=Norwood Area Grovernment&code=201012&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('462e05d974a7449b916466eb650887d9','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 20:06:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=6',''),('472feecb158345d78b93beb4551f616d','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:38:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=34&value=3&label=Get the data in this Company&type=sys_data_scope&description=数据范围&sort=30&remarks=所在公司数据',''),('475c6d846c5845f89a081e59dd9fceb9','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('4767e70bd9bf4203a74f16336a40a19e','1','System Setting-System Setting-Menu Management-update','1','2019-10-02 18:49:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=7&parent.id=3&parent.name=System Setting&name=Role Management&href=/sys/role/&target=&icon=lock&sort=50&isShow=1&permission=&remarks=角色管理',''),('4811e2279fef444db633a28404c2b77d','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=5',''),('491c55794254493e835371a9691e28ea','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:52:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('498f15345cdd4be88bbcab67b132035d','1','代码生成-生成示例-树结构','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('4990f67c7c944a0aa67ff635ee7958c9','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('4993c6a1f0b647dfb1ae07fa41041f0b','1','系统设置-系统设置-菜单管理-update','1','2019-10-02 18:46:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=D&href=&target=&icon=&sort=100&isShow=1&permission=&remarks=我的面板',''),('49f7eb6f028a438cbf520c5687b05047','1','系统设置-机构用户-机构管理','1','2019-10-02 18:45:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('4a0c8ea686964a6091ae06c454b7362a','1','System Setting-office User-Office Management-update','1','2019-10-02 19:53:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=24&parent.id=22&parent.name=Genleg Council&area.id=6&area.name=Genleg&name=Genleg Level Grovenment&code=201012&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('4a4f84b1017a4e599a6c4303ab41b292','1','System Setting-office User-Office Management-update','1','2019-10-02 19:52:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=22&parent.id=7&parent.name=Adelaide City Concil&area.id=6&area.name=Genleg&name=Genleg Council&code=201010&type=1&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('4a96ac1fea3343d4bfd91895c8b5af41','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=3',''),('4a9eab2274b64df49f138f29af634cc5','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:40:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=13&value=cerulean&label=BLUE Theme&type=theme&description=主题方案&sort=20&remarks=天蓝主题',''),('4ae98a27c18541b38b3252e2e042294e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:07:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=21',''),('4b0eda40280b4de1aefa0f4682381f6b','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:58:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=1',''),('4b46dff578824a9ba445850432dd8e90','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:41:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=theme',''),('4b4d8c11d7cb4698844f4a51f24accb4','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:41:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=16&value=flat&label=Flat Theme&type=theme&description=主题方案&sort=60&remarks=Flat主题',''),('4b543ba6d1f54366b71056c676b9b05a','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:37','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('4bf4884ec8344e9a93942f342fbfff69','1','系统登录','1','2017-11-14 15:14:21','61.129.6.148','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko','/jeesite/a;JSESSIONID=24e6cee7284249468b869f63bee5d881','GET','',''),('4c95dfec9db74335babf1123184a1f90','1','System Setting-office User-Office Management','1','2019-10-02 19:05:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('4d515c057d4c4fb1938a471c0c4b2e87','1','System Setting-System Setting-Menu Management','1','2019-10-02 18:49:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('4ddc24ce3b1d4b12aecd6bc65a97c4be','1','内容管理-内容管理-内容发布','1','2017-11-14 15:18:41','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/','GET','',''),('4e8e22ed3f1a4b50a96f91c0420e40fb','1','System Setting-office User-Office Management-查看','1','2019-10-02 20:02:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('4f69ab1b1c09471aa7d35653500341f9','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('5038fce4191c4d13b5514ef07cf7f0a0','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:45:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','office.id=1&office.name=山东省总公司',''),('503d387092d54123b6cf39e0cccf839c','1','System Setting-office User-Office Management-update','1','2019-10-02 19:06:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=17&parent.id=7&parent.name=Adelaide City Concil&area.id=5&area.name=Norwood&name=Norwood Area Council&code=201010&type=1&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('506dadfa2ab743deb05c22372a34d9d5','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=22',''),('507ea1857d7241848a2d2543e1debd6b','1','System Setting-office User-User Management-查看','1','2019-10-02 20:06:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','repage=',''),('51d9cfc06a4049f5b7c65a5adc07cb53','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:40:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=12&value=default&label=Default theme&type=theme&description=主题方案&sort=10&remarks=默认主题',''),('51df5c22ecdc4ef0861e796e84cc0da8','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=1',''),('5209988ca67043a8aea3811fa19a1aa3','1','System Setting-office User-Area Management-update','1','2019-10-02 18:58:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=4&parent.id=3&parent.name=Adelaide&name=City&code=110102&type=4&remarks=',''),('5231aefe6bcc4df1aa8ccb5f85240292','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('527e46ee507240c892328e7fca8438ee','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:33:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=26',''),('5283fb1b491e432385b9f23105dbd1c0','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:39:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=37',''),('52976dadcab24c27962251ac94c4e255','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:32:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=25',''),('52c7fa97d8fc4921b06228b60e52f73b','1','系统设置-机构用户-机构管理','1','2019-10-02 18:44:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('53415bdb7bb14869b77920791cf7a3e4','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:33','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('54168660e62c4130918f5d3c1b866a33','1','System Setting-office User-Office Management-update','1','2019-10-02 19:07:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=21&parent.id=17&parent.name=Norwood Council&area.id=5&area.name=Norwood&name=Norwood Area Technology Department&code=201014&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('54bb46ef624d4bf588a8bc7440672380','1','代码生成-生成示例-主子表','1','2017-11-14 15:14:40','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('54d80194aa384326b3214a2964fd9574','1','System Setting-office User-Office Management-update','1','2019-10-02 19:00:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=4&parent.id=1&parent.name=South Australia Province&area.id=2&area.name=South Australia&name=Market Department&code=100003&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('55074e36635d46419eb84d18b86358a4','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 19:01:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('55124c61305d492a8fe55f1962e830d0','1','System Setting-office User-Office Management-update','1','2019-10-02 19:07:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=20&parent.id=17&parent.name=Norwood Council&area.id=5&area.name=Norwood&name=Norwood Area Marketing Department&code=201013&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('557852d5f92749038b88540589029d4f','1','System Setting-office User-User Management-查看','1','2019-10-02 19:55:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/form','GET','',''),('558de10f44254a8680f314e77771972f','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:57:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('55914d7f6be94e54bec8ee227f0d97dc','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:45:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('5614bcb0511e46eb9d5f0d882b936f9b','1','System Setting-System Setting-Menu Management-查看','1','2019-10-02 18:49:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=7',''),('566b8432491144ddba53b30bbe1849c3','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('56d405384aa54c719a158c11fdf80901','1','System Setting-office User-Office Management-update','1','2019-10-02 19:05:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=14&parent.id=12&parent.name=City Concil&area.id=4&area.name=City&name=City Area Grovenment&code=201002&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('5718fd569cf240288629c062d5464560','1','内容管理-内容管理','1','2019-10-02 18:57:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/tree','GET','',''),('57a3bbf8fb1d4652855e9ae24e37fcb6','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=theme',''),('589ca64c127149c48a0643070a5d44b9','1','System Setting-office User-Office Management','1','2019-10-02 19:01:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('58b693bc8c254b4cb8b8790b5b546657','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:38:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('59a694e5e3d249cfa14778f6b1f15a03','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_common',''),('5a641d5a22364503892571d2961e95a7','1','System Setting-office User-User Management-查看','1','2019-10-02 20:05:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('5b5064b589b34d73a721f4d1f770d212','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:54:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('5cc2e9ad36b247998070fb26aa6b0935','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:07:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=17&parentIds=0,1,7,17,',''),('5d169d86cde34019bee2d83f3441bce2','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 20:11:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('5d526bb862da4474a121366c60fc42a0','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:16:48','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('5d7972b9765e4bb0b7a240877889ff74','1','System Setting-office User-User Management-update','1','2019-10-02 20:06:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/checkLoginName','GET','oldLoginName=a1752399&loginName=a1752399',''),('5da25db65af84431a58ffbf9a37f843b','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('5ffe0e87c9ba40228ec7e75e8918c8fd','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=97&value=2&label=FEMALE&type=sex&description=性别&sort=20&remarks=女',''),('60774fe6fa33480fae174a4316c7c9cc','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:58:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('60a6ac668b98435b86c6b627874eb84c','1','System Setting-System Setting-Role Management','1','2019-10-02 19:58:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('6143b3a953754d4dbdbed33baf3fc4c9','1','System Setting-office User-User Management-查看','1','2019-10-02 20:05:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('61712cd66f384aeb91a72958a10e05ae','1','System Setting-office User-User Management-查看','1','2019-10-02 20:04:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','repage=',''),('617508dec0034b9fa04d7c1bd20374d0','1','System Setting-office User-User Management-查看','1','2019-10-02 19:50:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('61cc4029d5a14abbbd43b2202198a476','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:30:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_user_type',''),('623d9bce343b4886a8cd65ac172c10fb','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:02:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('631405808c2942fab8051a76e215b505','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=32',''),('6347d9ec264b4db4909a1859c2a6ce81','1','System Setting-System Setting-Menu Management-查看','1','2019-10-02 20:02:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','',''),('6390cce6459f4f6ea2026f58fdc5afb0','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:58:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=2',''),('63b1e0e37a114871b48fe7da728e5f6c','1','System Setting-office User-User Management','1','2019-10-02 20:05:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('645112d7445d4a34b5235bfa80524b59','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_area_type',''),('6461b166e7e044f9b2006fadac038600','1','System Setting-office User-User Management-查看','1','2019-10-02 20:02:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('64a02e9ea38a4259860f2b33ab81f894','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=22&parentIds=0,1,7,22,',''),('64d4504393734b08a11dc86ecd2fc309','1','System Setting-office User-User Management-查看','1','2019-10-02 20:04:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/form','GET','',''),('6512778761f04dae8b7b3dc9bb016d47','1','System Setting-office User-Office Management-update','1','2019-10-02 19:02:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=11&parent.id=7&parent.name=Adelaide City Concil&area.id=3&area.name=Adelaide&name=City Technology Department&code=200004&type=2&grade=2&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('6587dcd5bbfe4e3490e1b49563cded55','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:19:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('659557586297489196c5da24fafbda7c','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:18:56','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/export','POST','pageNo=1&pageSize=30&orderBy=&company.id=&company.name=&loginName=&office.id=2&office.name=公司领导&name=',''),('663a01fac18a43f1897c14c780c25915','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('66649c7a031b4c9b98e02ac48a2ac523','1','System Setting-office User-User Management-update','1','2019-10-02 20:04:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/save','POST','id=&photo=&company.id=22&company.name=Genleg Council&office.id=3&office.name=Grovernment&no=a1752399&name=Jianqi zeng&oldLoginName=&loginName=a1752399&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=6&_roleIdList=on&remarks=',''),('66fbd365622246a48228964e08a9e3c0','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:04:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('6710971a6e9748208a4c429898e878f6','1','System Setting-office User-Office Management-update','1','2019-10-02 19:06:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=18&parent.id=17&parent.name=Norwood Council&area.id=5&area.name=Norwood&name=Norwood Area Council&code=201011&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('6754f5be8d5248a1983d267e4f556b9c','1','System Setting-office User-User Management-查看','1','2019-10-03 00:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('6770f0e8b080403e99d8f58e03d2ec43','1','System Setting-office User-User Management','1','2019-10-02 19:05:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('67cf21f7755240868e699cfb59b19939','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('690f06fd13224015a6c4aba6c91b6687','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:59:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=4&office.id=1&office.name=South Australia Province&oldName=部门管理员&name=Office Admin&oldEnname=b&enname=b&roleType=assignment&sysData=1&useable=1&dataScope=4&menuIds=&officeIds=&remarks=',''),('691c1f4f45d449b79a2672d53f63c1ff','1','系统登录','1','2017-11-14 15:14:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a','GET','login=',''),('69201c883f394cf280a20d86da974897','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('692d0e41a4f74f219180a7895d9b1d7c','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_area_type',''),('6a391e39213847f383b1ff7f507ac30e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('6a7500af919e4534b0e7e9e31ac5e25b','1','System Setting-office User-User Management-update','1','2019-10-02 20:04:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/checkLoginName','GET','oldLoginName=&loginName=a1752399',''),('6aab7d1a6d704a9791a1a294d002ccd6','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:45','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('6b8ea9bdedfe4e9186b2b03742368d35','1','System Setting-office User-Office Management-update','1','2019-10-02 19:06:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=17&parent.id=7&parent.name=Adelaide City Concil&area.id=5&area.name=Norwood&name=Norwood Council&code=201010&type=1&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('6baeaaec33e7402aa25b08729011a258','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:36:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=19&value=3&label=AREA&type=sys_area_type&description=区域类型&sort=30&remarks=地市',''),('6bbccf042ac5490ab19632e87498625a','1','System Setting-System Setting-Menu Management-查看','1','2019-10-02 18:49:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=10',''),('6beb5473259d48baa69c552083df5727','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:16:34','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('6bff0f396fe4402db6c99f8e72e6f1d9','1','System Setting-System Setting-Role Management','1','2019-10-02 20:06:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('6c2c35df15114f11b4532a1d399f21c3','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=12&parentIds=0,1,7,12,',''),('6cceb7ffb4534f79b836eddf253023df','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=11&value=orange&label=ORANGE&type=color&description=颜色值&sort=50&remarks=橙色',''),('6cd3e1404f444994946aeaf3602f4d9e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:51:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('6f4efdc8502744c595433e197d851a3b','1','System Setting-office User-User Management','1','2019-10-02 19:02:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('6fd7b0a7ee0f49a09f3327c4d26ba04d','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=yes_no',''),('6ffb52bd13304991bd08dea728f1fbe9','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('703434dff2b8445fa803106d86e9fb7b','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_area_type',''),('70bd43a3f27a4fb0bf1656c6f224f06a','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('70c38c1a5edc4a26a9ed5b8de5876e62','1','内容管理-内容管理','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('70f8012c22364b1098a511371c0b3366','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('7161145f04aa4a2895594b566ab0ecab','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:30:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=39&value=1&label=System Manager&type=sys_user_type&description=用户类型&sort=10&remarks=系统管理',''),('718c974493e047b0be06d75fbc0f24ee','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=10',''),('7193d5ed6f434b328b67658544b85474','1','System Setting-office User-User Management','1','2019-10-02 20:02:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('719429437bac4e3380fe55697abfa85c','1','系统设置-系统设置-菜单管理-update','1','2019-10-02 18:47:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=30&parent.id=28&parent.name=Personal Information&name=Update Password&href=/sys/user/modifyPwd&target=&icon=lock&sort=40&isShow=1&permission=&remarks=修改密码',''),('71a8fb446d204d8ea1229ba41a0830ec','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:51:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('723b905f4e874e39914dd02636e5ee1a','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=53',''),('7245aab85da84d9a8dae577cb2a3d7ac','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_type',''),('7314af2f3db14b629bdeb5a17cb6ecb7','1','系统设置-机构用户-机构管理','1','2019-10-02 18:45:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('73d76eb77a0e430a8c99b494b8673c8d','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:40:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=12',''),('74188052e58f4d7098088b225d11d4c3','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=53&value=0&label=Published&type=cms_del_flag&description=内容状态&sort=10&remarks=发布',''),('7483ebdef78a4a959dc39b26c1542305','1','我的面板-个人信息-个人信息','1','2017-11-14 15:15:38','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('748903381d52438f9bbbaea794a4991b','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:38:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=33',''),('7548bec2d7b044238608db336f101ddc','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('75df2e1c1ed74eebaf0f5626444d4a92','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=17',''),('75e820427d68423aa9544324a57d01b7','1','System Setting-System Setting-Role Management','1','2019-10-02 20:02:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('76fb15111a884b638cd1d2d016b94bd6','1','System Setting-office User-Area Management','1','2019-10-02 18:59:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('77a33274fa4c4ad48149aa4b9a871058','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:38:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=34',''),('782b48618fb541dba60d2010e2ecf3f1','1','在线办公-通知通告-我的通告','1','2019-10-03 00:29:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/oa/oaNotify/self','GET','',''),('787be03de14e48158c3758247963a13f','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:37:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=32',''),('788afd5d4ac844d2a140e3de72202fb2','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_grade',''),('78d1a9fc43084eef983deb758612e37f','1','System Setting-office User-Office Management-update','1','2019-10-02 19:01:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=7&parent.id=1&parent.name=South Australia Province&area.id=3&area.name=Adelaide&name=Adelaide City Concil&code=200000&type=1&grade=2&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('78de0d122b9e43a18a602da2a3a17ec6','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=cms_del_flag',''),('79b14036a5e745f3a3c0441a0032dd5d','1','代码生成-代码生成-生成方案配置','1','2017-11-14 15:18:31','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genScheme','GET','',''),('7ab02043c3aa4a64aa4059299e783f4f','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=color',''),('7b1f377df6d044b78728ea5f510a6fff','1','System Setting-office User-Office Management-update','1','2019-10-02 19:00:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=3&parent.id=1&parent.name=South Australia Province&area.id=2&area.name=South Australia&name=Grovernment&code=100002&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('7b4e7bbae0954d81a6ce56868c6c9951','1','系统设置-机构用户-用户管理','1','2019-10-02 18:44:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('7b85b0a3712648d9a866633e667c4e71','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:29:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('7bb3e5fe33db4a3c8e22aaa5e536752b','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=12&parentIds=0,1,7,12,',''),('7c0e175517a946b19a3ca16e4d371bf1','1','System Setting-office User-Area Management','1','2019-10-02 19:54:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('7c3dcd318a514fbd80eaf1435ce1bae8','1','System Setting-office User-Office Management','1','2019-10-02 19:54:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('7cf4012cd3a64aae9d7b035a36d2424c','1','System Setting-System Setting-Menu Management-update','1','2019-10-02 18:49:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=4&parent.id=3&parent.name=System Setting&name=Menu Management&href=/sys/menu/&target=&icon=list-alt&sort=30&isShow=1&permission=&remarks=菜单管理',''),('7d24b1eba808472c88c9d732644b59c8','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('7ebfbb2084894e498d8d4e107b2c4caa','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=26',''),('7eddebf0bb9a4a65989edf6c3503d37a','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=6',''),('7f1a761e5de7467aa79f7e0246ef27a2','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=del_flag',''),('7f3f3f9db7cf460aba6a76a4d41f3b48','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:36:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=18',''),('81d3bf08a86b4835b79eb7a23d540ff5','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_area_type',''),('81d733deffb74495af6bb2788f89347a','1','System Setting-office User-Office Management','1','2019-10-02 19:56:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('81ed4c0632d54de696249fcddbe281b9','1','DashBoard-Personal Information-Personal Information','a5c75a64e01f437f9d0b00d5c2eb2f38','2019-10-02 20:14:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('81eeea30afcf4863851658b7ae097162','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('82387bca91574e6d8199953d6ae7d41d','1','系统设置-系统设置-菜单管理-查看','1','2019-10-02 18:46:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=27',''),('826965c431fe463598913d6e88916d4d','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:07:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=20',''),('82ad49c51a124f33a8cc88a55f6db600','1','在线办公-通知通告-我的通告','1','2017-11-14 15:15:14','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_2',''),('82d43ef71944440fa74256bb4680d942','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:32:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=28',''),('82f1a41e11064836b5642f90c7fd74ae','1','System Setting-office User-Area Management','1','2019-10-02 18:58:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('83b395fe3bbd411ea83215d79e6a206e','1','System Setting-System Setting-Role Management','1','2019-10-02 19:57:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('84531f65db184879b6a4764ce4bde26f','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=36&value=5&label=Get the data in this department&type=sys_data_scope&description=数据范围&sort=50&remarks=所在部门数据',''),('84a69b84788e48839b6da38539b8b925','1','System Setting-System Setting-Role Management','1','2019-10-02 19:59:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('84d7e3d2356a4dec88202fd20fce0a46','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_type',''),('859277c486e64a60b77d1478a3725759','1','在线办公-流程管理-流程管理','1','2017-11-14 15:14:25','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('85d2169900bc49f6aa1ef5365bddfd67','1','内容管理-内容管理','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/none','GET','',''),('8685b8d1ad4941c2b67835778f3452f1','1','内容管理-内容管理','1','2019-10-03 00:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/none','GET','',''),('86b01cdcace64f32a5551fcd1712a2c4','1','System Setting-System Setting-Menu Management','1','2019-10-02 19:56:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('86de3cec1f3c4ec38b0f0e04169564bc','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:45:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('87407f9512914d939016f7cf3904b048','1','System Setting-office User-Office Management-update','1','2019-10-02 19:00:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=6&parent.id=1&parent.name=South Australia Province&area.id=2&area.name=South Australia&name=Police Station&code=100005&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('87d819788fc649bd88718173d13a1c7e','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=show_hide',''),('890a0f2ac59e417f959cac4eb74cfe42','1','System Setting-系统设置-菜单管理-查看','1','2019-10-02 18:48:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=14',''),('891ec30cc5f44457ae6b451f96bdedef','1','内容管理-内容管理-内容发布','1','2019-10-02 18:44:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/','GET','',''),('89642c42bc424cef8baf990e29bd2a48','1','内容管理-内容管理','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('8968d58041a34f66a52fb056c0ff29a1','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:02:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('8974a5838d894a2c86f3b7fc20e18b5d','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:38:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=36',''),('899e80407c1844f286eabcdf61ea1cfa','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=7',''),('89ced19e501e4c9489556afe15a6dbbd','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=7&value=red&label=RED&type=color&description=颜色值&sort=10&remarks=红色',''),('8a0d54b9ac65429aacaf59f51f677654','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:32:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=31',''),('8a418f9c1b114658a5f39e7033bceebc','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:36','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('8a5f09ae258a4921be2adcc0078e3357','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('8ad65bcdc44745058719a02fdffd2d64','1','System Setting-office User-Office Management','1','2019-10-02 20:02:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('8b60a7be233e4e258d8b2217409eb8ff','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=color',''),('8cb7b57cabcb4ae1a9676d89510ccbdb','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:33','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('8ce876aa81a141cc975776c4afc84770','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('8ceacd62ab6c412dbac7c24646cc835b','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:52:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=22',''),('8d2ca2b3c41a472099d0ecd74b7c4f6a','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_common',''),('8d4f0e9d27f64d4990549263e452379a','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=10',''),('8d9c379a123447d9a8cd892657908e60','1','系统设置-机构用户-用户管理','1','2019-10-02 18:45:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('8da749f3cf7f44bda98b0eee70b7cbb8','1','System Setting-office User-Office Management-update','1','2019-10-02 19:53:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=23&parent.id=22&parent.name=Genleg Council&area.id=6&area.name=Genleg&name=Genleg Level Grovenment&code=201011&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('8dcad44ea88e4b2ca1c6f1645b0493b0','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=8&value=green&label=GREEN&type=color&description=颜色值&sort=20&remarks=绿色',''),('8eaa9c2200774c358afbc60be5fccdf9','1','System Setting-office User-Area Management-update','1','2019-10-02 18:58:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=2&parent.id=1&parent.name=Australia&name=South Australia&code=110000&type=2&remarks=',''),('8ebef3907bed4826bb47bb3684a08b10','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:36:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=4&value=0&label=HIDE&type=show_hide&description=显示/隐藏&sort=20&remarks=隐藏',''),('8fdb0909a18b42898b6b105cfc7d1a6d','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=24',''),('9020e59bd0e04144a17edab340ef0ace','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=25&value=1&label=Grovenment&type=sys_office_common&description=快捷通用部门&sort=30&remarks=综合部',''),('9092ea0e0fb4473988b08d378dda1c78','1','System Setting-日志查询-日志查询','1','2019-10-03 00:42:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/log','GET','',''),('9096ec607e6f4ffdb4fba99271a1f83a','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:57:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=3&office.id=1&office.name=South Australia Province&oldName=本公司管理员&name=Grovement Officer&oldEnname=a&enname=a&roleType=assignment&sysData=1&useable=1&dataScope=3&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=',''),('90e2a13a96864b0399fc076788008f25','1','System Setting-系统设置-菜单管理-查看','1','2019-10-02 18:48:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=13',''),('925bc77d94fc4c8fa5298644f240b4f9','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('92c240a9fca54c3693fa742c6c89d3e5','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:32','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('92efdf0416664d629fe1a6c1618bd9d6','1','内容管理-内容管理','1','2019-10-02 18:44:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/tree','GET','',''),('93041c08bdc745a4b45b7df55f451f64','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:30:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_user_type',''),('937a9b677b5b4218863ee8ac3552f0c9','1','System Setting-系统设置-菜单管理-update','1','2019-10-02 18:48:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=20&parent.id=13&parent.name=office User&name=User Management&href=/sys/user/index&target=&icon=user&sort=30&isShow=1&permission=&remarks=用户管理',''),('93effae7dc844780a854555501493b4f','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=5&value=1&label=YES&type=yes_no&description=是/否&sort=10&remarks=是',''),('9496ca5c21064694bc2ec68aedaa9481','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:07:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=17&parentIds=0,1,7,17,',''),('9504c2bb35a04128927cef1d7d0352a8','1','System Setting-System Setting-Role Management-update','1','2019-10-02 20:06:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=6&office.id=1&office.name=South Australia Province&oldName=Normal Voter&name=Normal Voter&oldEnname=d&enname=d&roleType=assignment&sysData=1&useable=1&dataScope=8&menuIds=1,27,28,29,30,c965e900251c442699226325929168a8,c7e4180ea0944770a2411029b020d439&officeIds=&remarks=',''),('977b394159ac431da37a17b0728a1342','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:46:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('979835433e7a4eb0abd84ab762326953','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('984e9275aa9c41c5a80ff29debbd1e04','1','在线办公-个人办公-审批测试','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/testAudit','GET','tabPageId=jerichotabiframe_6',''),('98b1e64c6d134d9c9d7cb13be87f7c57','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=23',''),('98c5c752fcd446ca9e8816bac19f5fac','1','代码生成-生成示例-单表','1','2017-11-14 15:14:39','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/test/testData','GET','',''),('98dd06dbac9e49aea48d31fb1828b0b7','1','System Setting-office User-User Management-查看','1','2019-10-02 19:59:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('99b9d151b40e42e499230768a192cf85','1','系统设置-系统设置-菜单管理-update','1','2019-10-02 18:47:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=29&parent.id=28&parent.name=Personal Information&name=Personal Information&href=/sys/user/info&target=&icon=user&sort=30&isShow=1&permission=&remarks=个人信息',''),('99dd3cf5b7a04d77ae1ea835fb5e3a81','1','在线办公-通知通告-我的通告','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_4',''),('9a88e9ad1f774ee88cc82752f193913c','1','System Setting-office User-User Management','1','2019-10-02 18:55:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('9b0b12d0aa74407dbbaca746ca413067','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:46:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('9b0e3717247f45729948345ec5b9a574','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=color',''),('9b18d5736dae4a8f883f7cedee6c3d47','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:58:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=1&office.id=1&office.name=South Australia Province&oldName=系统管理员&name=System Admin&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=',''),('9b53c0fb905844ee833c5d64750fbd39','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('9b64c5a197ef494c87602955cfdc018e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:51:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=22',''),('9c05b16cd3174d49857cc93bec26bf59','1','系统设置-机构用户-机构管理','1','2019-10-02 18:45:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('9c6ec557213846319ccb1193afb0b622','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:37:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=33&value=2&label=GET the data in this Company&type=sys_data_scope&description=数据范围&sort=20&remarks=所在公司及以下数据',''),('9e256e2dc2074e8482a5df69d307bd66','1','System Setting-office User-User Management-查看','1','2019-10-02 20:05:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/form','GET','id=a5c75a64e01f437f9d0b00d5c2eb2f38',''),('9e8a631351d340449e9cb90ca80e675d','1','System Setting-office User-User Management','1','2019-10-02 19:54:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('9f729cd751a84c84b25c171f309e96b9','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:37:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=19',''),('9fa28548de5f4da4b7abc607dcef3e5b','1','System Setting-office User-User Management-update','1','2019-10-02 19:56:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/checkLoginName','GET','oldLoginName=&loginName=test123',''),('a00748782f2047e3a8eca8833699a667','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:16:26','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=12',''),('a09bd6c7a8144b0d9ab01b7a92525420','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('a09c4adc306543c5a6cc9f3db3fe3e12','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:45:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('a1028f4109d04aa2a1c7bcc39a4893ea','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:32:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=28&value=1&label=Level One&type=sys_office_grade&description=机构等级&sort=10&remarks=一级',''),('a135f9c131f54e3a9b4841214115eeff','1','System Setting-office User-User Management-查看','1','2019-10-02 18:57:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('a2b1b487d703457ea22e4737517744d5','1','系统设置-系统设置-角色管理','1','2019-10-02 18:45:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('a319e99505604220b831e289f820539d','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:59:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=7&office.id=7&office.name=Adelaide City Concil&oldName=济南市管理员&name=City Office Admin&oldEnname=e&enname=e&roleType=assignment&sysData=1&useable=1&dataScope=9&menuIds=&officeIds=7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26&remarks=',''),('a329a386dd1e44dc9fe9e8677b9246d9','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:44:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('a3992b5c76d14a5796e3cbc99949bfa5','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:51:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('a3febea5413c4f34ab19b6596cefecb6','1','System Setting-office User-User Management-查看','1','2019-10-02 19:56:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('a5385deb58c749f785c7135dedba3b50','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:37:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=32&value=1&label=All DATA&type=sys_data_scope&description=数据范围&sort=10&remarks=所有数据',''),('a6057d089fbc4d028023930d312e854f','1','System Setting-office User-Office Management-update','1','2019-10-02 19:01:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=8&parent.id=7&parent.name=Adelaide City Concil&area.id=3&area.name=Adelaide&name=City leader&code=200001&type=2&grade=2&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('a6225f690cbc4b8a8710ca19a0474523','1','系统设置-机构用户-机构管理','1','2019-10-02 18:46:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('a69c7f684c7f4ed0bdaad70e3d2c9f1a','1','System Setting-office User-Office Management-update','1','2019-10-02 19:04:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=12&parent.id=7&parent.name=Adelaide City Concil&area.id=4&area.name=City&name=City Concil&code=201000&type=1&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('a78c1bc4d6b84b99bede262cfc697857','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=color',''),('a7920f708a7a4db48805b581da10ea21','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=7',''),('a807ce078e2d4e6bb0b10f333d462bd1','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=3',''),('a8c6befda8764df18742a774b5e9778c','1','我的面板-个人信息-修改密码','1','2017-11-14 15:18:38','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('a8f3148b182c45e9b3e777285b7356ef','1','内容管理-内容管理','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/none','GET','',''),('a900e5ad672c4dd792d00a571eb9bd79','1','内容管理-内容管理','1','2017-11-14 15:16:46','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/cms/tree','GET','',''),('a926ab212f544d0a9b24341779db4d7b','1','System Setting-系统设置-菜单管理','1','2019-10-02 18:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('a9acd9b0cc4a4321acd19efbba5eb733','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:45:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','office.id=2&office.name=公司领导',''),('aa3df978217c4f84b9267f5aae5a9c1d','1','内容管理-内容管理-内容发布','1','2017-11-14 15:15:15','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_3',''),('aa9e83d1551345b5be187abd2bd50ec5','1','System Setting-office User-User Management','1','2019-10-02 19:02:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('aae94721425a4dd5a90f3c9b99ba12b3','1','在线办公-通知通告-我的通告','1','2017-11-14 15:15:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('ab03bff5ba244608b95d7536f5ae30a4','1','System Setting-System Setting-Role Management','1','2019-10-02 19:56:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('ab4884f6d96d4a38ba7a4513aea279a6','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:59:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','',''),('ab6424349fe2446dbea08ea69a7a7f78','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=2',''),('acc535bbe32b4117a120eb7fb024464f','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=53&value=0&label=Publish&type=cms_del_flag&description=内容状态&sort=10&remarks=发布',''),('acf6e1b95110409cb32098cfd171c848','1','我的面板-个人信息-个人信息','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('ad5c3b862aa14897bac8a3ef6a80c5a5','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('ada1eb2fb6a84ec58d72dc211fc3d21c','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:56:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('af2241667df74bf4a3542d17617291a8','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('afba9af946a64474996e6ff604210e83','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=55&value=2&label=Checking&type=cms_del_flag&description=内容状态&sort=15&remarks=审核',''),('b06c2f8008eb4d388fb2dfd9d25ed7dd','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:31:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=41',''),('b1804a77f0b446cfbea05fb428f32408','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('b1d0d2c3eadb47ff984fc2c2b4dd2feb','1','System Setting-office User-Office Management','1','2019-10-02 18:55:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('b1d607e4f2274c12a6c24757fd671c48','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_user_type',''),('b24e9e02cb524a5186677080cb2ccb13','1','System Setting-System Setting-Role Management-update','1','2019-10-02 19:56:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/save','POST','id=2&office.id=1&office.name=South Australia Province&oldName=公司管理员&name=High level admin&oldEnname=hr&enname=hr&roleType=assignment&sysData=1&useable=1&dataScope=2&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=',''),('b26d50003be94001965b866259624a81','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:34:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=9&value=blue&label=BLUE&type=color&description=颜色值&sort=30&remarks=蓝色',''),('b286c6cd337b4ab8b597058da8fb11f1','1','系统登录','a5c75a64e01f437f9d0b00d5c2eb2f38','2019-10-02 20:05:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('b29dd96a9f8c49648cd736ab74496ef1','1','System Setting-office User-Office Management-update','1','2019-10-02 18:58:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=2&parent.id=1&parent.name=South Australia Province&area.id=2&area.name=山东省&name=Leader&code=100001&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('b2a00c41cd28490e8112189ebf4f6e83','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=4',''),('b2bae641af124097ad53d1bdcba98446','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:41:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('b31a6fcd40824bc0a8a04ea68c7b6018','1','系统设置-系统设置-角色管理','1','2019-10-02 18:45:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('b3f1d96e8f4f441fa7fb84871f9b3cbc','1','系统设置-机构用户-机构管理','1','2019-10-02 18:44:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('b3fde77c59b24abb8e389d020bea48fd','1','内容管理-内容管理-内容发布','1','2017-11-14 15:14:28','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/','GET','',''),('b460df8c1e29461d8b3edb51040d10bb','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=22&parentIds=0,1,7,22,',''),('b470267968fd451fae266fdd0e23d5e7','1','System Setting-系统设置-菜单管理-查看','1','2019-10-02 18:48:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=20',''),('b48dd3a3263c4ce2916332ce4d671972','1','System Setting-office User-User Management-查看','1','2019-10-02 19:05:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('b4b2c424ce404d80a4eeaca9e7029430','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:25','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/form','GET','id=11',''),('b4e413a0671d4920852b68d748cc2b2b','1','系统登录','1','2019-10-02 20:11:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('b5c658d8f7034928b45e54fe821554f6','1','System Setting-office User-Office Management-update','1','2019-10-02 19:51:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=22&parent.id=7&parent.name=Adelaide City Concil&area.id=6&area.name=Genleg&name=Genleg Level&code=201010&type=1&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('b666fd96035644fe84e30e7abc4c792b','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=1&value=0&label=Normal&type=del_flag&description=删除标记&sort=10&remarks=正常',''),('b6a0650eff794ddbbd90b769b0e2cfbf','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:44:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('b6b254e5f16742a4a8ec3af8d6e542d8','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 20:05:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('b6d603680dc749f697475d80f98124b1','1','System Setting-System Setting-菜单管理-查看','1','2019-10-02 18:49:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=4',''),('b720f8646ed1443994cc4a51eaf2990f','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=1',''),('b783c37c51e04ad18ee653be3d8e4b7b','1','System Setting-office User-Area Management','1','2019-10-02 18:59:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('b7f0242058e046c382070800092af7ea','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('b8cd8c1efb284b5c8da517e34a4a04f3','1','System Setting-office User-User Management-查看','1','2019-10-02 19:02:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('b91ff20303234af291caba2edfab0ffd','1','我的面板-个人信息-个人信息','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('ba6418b4c335480bb7a688fb2673b204','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:33:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=26',''),('bab919c277b543b187edbdd1b855e947','1','系统设置-系统设置-字典管理','1','2019-10-02 18:45:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('bb1cdb70e5784a63acf0e0b4fab860ee','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=21&value=1&label=Company&type=sys_office_type&description=机构类型&sort=60&remarks=公司',''),('bbf786d98eb944d48ae1650e35218b1e','1','DashBoard-Personal Information-Personal Information','1','2019-10-03 00:09:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('bbf83cea2817479087bcadbf7df07286','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:47','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('bc19e2adc2bc4265915d6fad55876d58','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:37:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('bc315e1a7ce84944aaaee177f026a877','1','我的面板-个人信息-个人信息','1','2017-11-14 15:16:26','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/sys/user/info','GET','',''),('bc5a1c412d4f422d9ec209ed09b03ae2','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:52','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bc5aec3d567844c89f18e97ecfac44d6','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('bc611dd8563a4e37945121d31925a095','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:39:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=22&value=2&label=Deoartment&type=sys_office_type&description=机构类型&sort=70&remarks=部门',''),('bc9d57676220489ab31d9b801d400ff0','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:37:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=19&value=3&label=City&type=sys_area_type&description=区域类型&sort=30&remarks=地市',''),('bcd102a3c55f4a2c867f5fc96af12a06','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:56','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_2',''),('bd661044cd6b43468d6e0f69f94b6213','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:33:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=5',''),('bdc8ac40eccb47e4813b49786eb429fd','1','系统设置-机构用户-用户管理-查看','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('bedb6ea6b49344bd82e51b358310996b','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:40:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=14',''),('bee2caabf13042659a7854b27fb10598','1','System Setting-office User-Area Management','1','2019-10-02 19:05:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('bfb1eb13cf8f45a8b1fa4aec1a8e9956','1','系统登录','1','2019-10-02 20:05:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('bfcd3e570c33417498ec3c630110e9ab','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('c018a8a424a849f5b5fb3a99110fef49','1','System Setting-office User-Office Management','1','2019-10-02 19:02:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('c084e799da2045d4a1120794285ee5be','1','系统设置-机构用户-用户管理','1','2019-10-02 18:44:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('c19854c19633447f95f58c3b05aa5622','1','System Setting-office User-Office Management-update','1','2019-10-02 19:02:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=10&parent.id=7&parent.name=Adelaide City Concil&area.id=3&area.name=Adelaide&name=City Marketing Department&code=200003&type=2&grade=2&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('c2314f427b6d4ad087e1f5d7b0dffc3d','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:49','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('c358b4f2c1244b10aa8f4134e3a22e57','1','System Setting-office User-Area Management','1','2019-10-02 18:58:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('c3838adc948047c7b5a81ed1b0ee46cd','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:57:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=2',''),('c3e01ebfe1864b809240aad1415507da','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:33:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=6',''),('c4d80521ce7e491a9f231720502898f0','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:44:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('c4ec4fce4d274f66a2c67641af107149','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_common',''),('c53b1dedecc04d1b9ef439d0e3bb544c','1','System Setting-office User-Area Management','1','2019-10-02 18:58:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('c585ebbf983e4c0984d6eba403ce3c03','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:17:15','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/gen/genTable','GET','',''),('c5c3ce456c2d42fe93e0c03b89dc230d','1','System Setting-office User-Office Management','1','2019-10-02 19:51:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('c6b3a49d0bf94b3fbfae895f1389e270','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:29:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('c70dcc3bf9a144e8b75fa00d139433e7','1','系统设置-机构用户-用户管理-查看','1','2019-10-02 18:44:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('c71acf6ac29d453f8cc4ab4c2108e0f3','1','我的面板-个人信息-个人信息','1','2017-11-14 15:14:54','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('c79a0fabba0148709edacf89e340aae9','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('c7b61f3ee2794a8cb2a905e4d5cf8bca','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:56:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=2',''),('c7ed34adba9c4f31ba7bb8bcd9595fcb','1','系统设置-机构用户-用户管理','1','2019-10-02 18:45:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('c826074245b248f58bccb13c0cd5b624','1','我的面板-个人信息-修改密码','1','2017-11-14 15:14:17','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('c87d3bdb158340b69bee60131abc934f','1','我的面板-个人信息-修改密码','1','2017-11-14 15:15:13','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_1',''),('c8e2245966914a37a700b8d4b51b1889','1','在线办公-流程管理-模型管理','1','2017-11-14 15:14:24','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/model','GET','',''),('c9b1f1c026b84a35977ba342e3f0f155','1','System Setting-office User-Office Management','1','2019-10-02 19:54:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('c9d7eae578964ef89de4dd9d57d77af1','1','System Setting-office User-User Management-查看','1','2019-10-02 19:01:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('c9df0822b16c4625b987fa3e0d904cae','1','System Setting-System Setting-Role Management','1','2019-10-02 20:06:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('c9efacd4d46547eb8440081ff575152b','1','系统登录','1','2019-10-02 18:44:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('ca2957f216a2484981e54cd5ced0c05a','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:01:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('ca4c279b0a624e6e94b2801368286580','1','系统设置-机构用户-区域管理','1','2019-10-02 18:45:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('cae75763b7f049ed9df28920e4615ca0','1','System Setting-System Setting-Role Management-查看','1','2019-10-02 19:58:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/form','GET','id=4',''),('cb8b75eba033472d9a08a33c94aea14f','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_grade',''),('cc7df643051f471a980ea7f89c51a844','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:45:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('cd9bae4bb4504534a63bd787f526729a','1','在线办公-通知通告-我的通告','1','2017-11-14 15:18:39','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('ce0adb06cd4e47d986220ae7195fd8ba','1','System Setting-office User-Area Management-update','1','2019-10-02 18:58:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=3&parent.id=2&parent.name=South Australia&name=Adelaide&code=110101&type=3&remarks=',''),('ce87d55bceae4782b5e70215c519b326','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:32:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=31&value=4&label=Level Four&type=sys_office_grade&description=机构等级&sort=40&remarks=四级',''),('cec03d319a8c4cb29be4f468364c4474','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=22&parentIds=0,1,7,22,',''),('ced88089548b47bfaa7c4dd59276176b','1','System Setting-系统设置-菜单管理-update','1','2019-10-02 18:48:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=17&parent.id=13&parent.name=office User&name=Office Management&href=/sys/office/&target=&icon=th-large&sort=40&isShow=1&permission=&remarks=机构管理',''),('cee2629463384fa08e9cf17da8160ff2','1','在线办公-流程管理-流程管理','1','2017-11-14 15:14:23','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/process','GET','',''),('cf1d148b727a499ca35b99a525460547','1','System Setting-office User-Office Management','1','2019-10-02 19:53:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('cf1f6cb4443c4535ae79211ba5be79ea','1','System Setting-System Setting-Role Management','1','2019-10-02 19:56:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('d0e43c74749143b68d9bb1f74824ec5d','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=8',''),('d1390fe5e3014ad98db6aef9a7a2a0a4','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=26&value=2&label=Techonology&type=sys_office_common&description=快捷通用部门&sort=40&remarks=',''),('d1beed71093c49f38e9dfce72cdb0e74','1','系统登录','1','2017-11-14 15:18:35','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a','GET','login=',''),('d1f6d68bcf1e4116bc8070f127eb602f','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sex',''),('d26d23829b5d43229d9c0725f347f171','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_area_type',''),('d368a1ad84a74ec0a946136d73e6b787','1','系统设置-机构用户-用户管理','1','2019-10-02 18:44:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('d3dd87b3b7fb46b086bf4adda859a272','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=2&value=1&label=Deleted&type=del_flag&description=删除标记&sort=20&remarks=Delete',''),('d46442b54c224af989fa83742415aafa','1','代码生成-代码生成-业务表配置','1','2017-11-14 15:14:35','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('d4f0dbaecdc041e78421d18275a8e98c','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('d5131a08dea24369ab4d4a0771875152','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=10&value=yellow&label=YELLOW&type=color&description=颜色值&sort=40&remarks=黄色',''),('d5481e475efe43ae8b08c57bcf01314e','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=17&parentIds=0,1,7,17,',''),('d6f98d04e07a46409ba354f795c4f4af','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=53',''),('d72858bb825840378fada944c3819b11','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=6&value=0&label=NO&type=yes_no&description=是/否&sort=20&remarks=否',''),('d7ba8debfc4e4178bc7f3a18ece2a206','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:35','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('d7f86e4b029e4e72a905536deb366c00','1','System Setting-System Setting-菜单管理-update','1','2019-10-02 18:48:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=3&parent.id=2&parent.name=System Setting&name=System Setting&href=&target=&icon=&sort=980&isShow=1&permission=&remarks=系统设置',''),('d8053280f1a54e36b46eed5b1aa0dda4','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:46:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('d83d1fc6f3b54977a06d62bd82f4f986','1','System Setting-office User-Office Management','1','2019-10-02 18:57:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('d889ded36ec14be280c4b39954d33941','1','系统登录','a5c75a64e01f437f9d0b00d5c2eb2f38','2019-10-02 20:14:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','',''),('d8922f054fff42679e6c275473ed7398','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('d8c3d22e12284ba3b6eacd3d7c291275','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:35:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=96&value=1&label=MALE&type=sex&description=性别&sort=10&remarks=男',''),('d96671ac265d40d68d4a9d81d058a42d','1','System Setting-系统设置-菜单管理','1','2019-10-02 18:48:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('d9cd43a891574c7cab3fb38f31277dfa','1','在线办公-个人办公-我的任务','1','2017-11-14 15:15:00','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/act/task/todo/','GET','tabPageId=jerichotabiframe_7',''),('da91e66389b742cdbc1ce016deafc4d3','1','System Setting-System Setting-Role Management','1','2019-10-02 20:05:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('daa3ec8548a14bf59cba5b10f3af9620','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:47:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('db6bffc11e594073b8af2de073898e3c','1','系统登录','1','2017-11-14 15:16:25','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a','GET','login=',''),('db907d8efb3441cf8f7dc96837663b1f','1','代码生成-生成示例-单表-查看','1','2017-11-14 15:17:02','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData/form','GET','',''),('dbb7e80eb65c48c3b3457afdce4b1df0','1','System Setting-office User-Area Management','1','2019-10-02 18:58:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('dc203c5a7b114099a972844a38a88509','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:07:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=17&parentIds=0,1,7,17,',''),('dc46f01fb31c4ac5aa2be0cbf9ed43af','1','System Setting-office User-User Management-查看','1','2019-10-02 18:55:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/list','GET','',''),('dc7cf06a15624cb4a05986faf3b95923','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=del_flag',''),('dcb3d4f3523a4e3db7156bcef94ef2d4','1','System Setting-系统设置-菜单管理-update','1','2019-10-02 18:48:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=2&parent.id=1&parent.name=功能菜单&name=System Setting&href=&target=&icon=&sort=900&isShow=1&permission=&remarks=系统设置',''),('dd628d5a491d461ead9312c9754c36a1','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:36:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=18&value=2&label=Province、State&type=sys_area_type&description=区域类型&sort=20&remarks=省 直辖市\r\n',''),('dd82833483c2460c9f0901513bb84632','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:45:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('de1dae00a90f4a20a5b9319f224c7002','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('de66ad02390b488984300cf4c63ddfb9','1','System Setting-System Setting-Menu Management','1','2019-10-02 18:49:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('dea3922c12c44aaca437d87630563668','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:31','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('dee5a993a8784a9c97c5da7f03c14c2b','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('deea5e4eba014567921320e1aefefe0d','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_office_grade',''),('dfc03fb20ce14d88adc7845796c194a3','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:04:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('dfc114e583934b54bb2220c1436a5fd4','1','内容管理-内容管理-内容发布-文章模型-查看','1','2017-11-14 15:15:55','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/findByIds','GET','ids=1,2,3',''),('e00cae57bcb8420ea2e50370b7d54212','1','System Setting-office User-User Management','1','2019-10-03 00:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('e0543a05bb394d4ba7fc45b9dc03e41c','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:36:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('e06c4c69b28d43128af6d5f62cbaa153','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:40:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('e0a675ad8c0e43bc9c2799d2ce15fb79','1','System Setting-office User-User Management-update','1','2019-10-02 19:59:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/checkLoginName','GET','oldLoginName=&loginName=a1752399',''),('e0e9c21e94d54a649d574ba6c8d0584e','1','System Setting-System Setting-Role Management','1','2019-10-02 19:56:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','',''),('e0f8590148cf4f2388697913ddc5fd0e','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sex',''),('e12df7c76166496eb7c539a723632b1f','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:04:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=12',''),('e1673a9cd1654a198729e47dcf82509e','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:32:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=41&value=3&label=Ordinary User&type=sys_user_type&description=用户类型&sort=30&remarks=普通用户',''),('e17baa3f32c642f789bcf89ccee6eef7','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:54:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=22&parentIds=0,1,7,22,',''),('e1952f25db6c4ebaad1cffe4bfe2a5c5','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=55',''),('e1ad48ec54d7408eb11722787d1567eb','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=11',''),('e1bbc58e1e7a47e59523a43010bc02dd','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:35:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('e320d4008f7049ac831340ebca8303c2','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:37:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=20&value=4&label=County&type=sys_area_type&description=区域类型&sort=40&remarks=区县',''),('e3824b0a2e0942ca8712016eefeb3e72','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:53:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=22&parentIds=0,1,7,22,',''),('e3b725b7e2634ffd8e3422070265966b','1','System Setting-系统设置-菜单管理','1','2019-10-02 18:48:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('e3fcffa4e32249e99bd812a2eecc7236','1','系统设置-机构用户-用户管理','1','2017-11-14 15:14:20','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('e412e4351c1e4f38b96c64ad301297f1','1','DashBoard-Personal Information-Personal Information','1','2019-10-03 00:42:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('e45709c1a5cc43a6a1be465cba1fb737','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:00:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=1&parentIds=0,1,',''),('e47c1376b5ba4792a19f3f1b5a66a20b','1','System Setting-系统设置-菜单管理-update','1','2019-10-02 18:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=13&parent.id=2&parent.name=System Setting&name=office User&href=&target=&icon=&sort=970&isShow=1&permission=&remarks=机构用户',''),('e4e46c6b17904bcdac1826533c670085','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:14:46','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('e4ee60eb89ef4e6fb36b632e852ab4b1','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:41:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=theme',''),('e5de28a8884942ebbd90051cf1288009','1','System Setting-System Setting-菜单管理','1','2019-10-02 18:48:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('e5eb7530759a4ba69759812c590fad6e','1','System Setting-office User-Office Management-update','1','2019-10-02 19:53:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=23&parent.id=22&parent.name=Genleg Council&area.id=6&area.name=Genleg&name=Genleg Level Leader&code=201011&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('e66b7d38dac34e5595fc203e3f04a33c','1','系统登录','a5c75a64e01f437f9d0b00d5c2eb2f38','2019-10-02 20:06:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a','GET','login=',''),('e6c7d5fda00841dbba9e89cf1a77a004','1','系统设置-机构用户-区域管理','1','2019-10-02 18:45:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('e773c142a11640e4867341f1dd9f5a7d','1','DashBoard-Personal Information-Personal Information','1','2019-10-02 18:57:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('e7828936d9ee4bbaa4f53d1b3889c5b7','1','System Setting-office User-Office Management-查看','1','2019-10-02 18:57:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=0,',''),('e78d891cf0f84e648e8f70b4771e26a9','1','System Setting-office User-User Management','1','2019-10-02 20:05:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('e792b6e6fddb4208a9b9139560056dbc','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:46:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('e7c52083c320458baf893579043e7c03','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:33:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=yes_no',''),('e8242d77ad194f6bb3c6577b9e8af8ae','1','System Setting-office User-Area Management-update','1','2019-10-02 18:58:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/save','POST','id=1&parent.id=&parent.name=&name=Australia&code=100000&type=1&remarks=',''),('e918c40ec1d146f8b5f7c3a826a6bf41','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=3',''),('e91a2ba786704eaba4b482f56492db31','1','System Setting-System Setting-Role Management','1','2019-10-02 19:59:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/role/','GET','repage=',''),('e9f526b4303749e9a381eca907360d22','1','System Setting-office User-Office Management','1','2019-10-02 19:02:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/','GET','',''),('ea1dac6d403d48989b152c09948f5dfd','1','System Setting-office User-Area Management','1','2019-10-02 19:56:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('eaace98ee80b42648b8442f8890c3dc3','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:32:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=30&value=3&label=Level Three&type=sys_office_grade&description=机构等级&sort=30&remarks=三级',''),('eb5b36e4fbca459f88c512420042c9bc','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('ebb17910af684d0e93a65660c47c3ee5','1','内容管理-内容管理-内容发布','1','2017-11-14 15:14:18','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/cms/','GET','',''),('ec3d72eff0b14ae88735541370c84704','1','System Setting-office User-User Management','1','2019-10-02 19:59:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('ec99e6b072104431b88e1ac13882c67c','1','DashBoard-Personal Information-Personal Information','1','2019-10-03 00:29:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/info','GET','',''),('ecb766d973a24e08b0d71c2f7c4ca883','1','系统设置-系统设置-菜单管理','1','2019-10-02 18:47:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('eccaf888f77e46209017c0c3ffb77290','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:02:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('ece4daceec4749539e8a1078f74ba1b9','1','代码生成-生成示例-单表','1','2017-11-14 15:16:56','182.110.0.154','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36 LBBROWSER','/jeesite/a/test/testData','GET','',''),('ed4513ca3a5149cdbd0555341e99cedb','1','System Setting-日志查询-日志查询','1','2019-10-03 00:42:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/log','GET','',''),('eda554fdfd4741ca8d260ea23e106da4','1','System Setting-System Setting-Menu Management-update','1','2019-10-02 20:03:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=&parent.id=1&parent.name=功能菜单&name=Vote&href=&target=&icon=&sort=5030&isShow=1&permission=&remarks=投票',''),('ee271430660143979676aee0b851b028','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:41:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('ee907a5a4ce14a95b87cb4999118b7ed','1','System Setting-System Setting-Menu Management-查看','1','2019-10-02 20:03:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','parent.id=c965e900251c442699226325929168a8',''),('ef578945184c43f78d3d8048971b681f','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:44:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('efbb20df24bf4cfca772d8c2c52a85f4','1','System Setting-系统设置-菜单管理-update','1','2019-10-02 18:48:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/save','POST','id=14&parent.id=13&parent.name=office User&name=Area Management&href=/sys/area/&target=&icon=th&sort=50&isShow=1&permission=&remarks=区域管理',''),('efe2ef92722b46629b5badb434e15c24','1','内容管理-内容管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('f0ea5f4156844124a5ddd26621e01fa7','1','System Setting-office User-User Management-update','1','2019-10-02 20:06:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/save','POST','id=a5c75a64e01f437f9d0b00d5c2eb2f38&photo=&company.id=22&company.name=Genleg Council&office.id=3&office.name=Grovernment&no=a1752399&name=Jianqi zeng&oldLoginName=a1752399&loginName=a1752399&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=6&_roleIdList=on&remarks=',''),('f1ac2e36561f4980b6c7ed1d0778ffbb','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:02:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('f1b06a004ed44ce3ba162a40e4398a22','1','System Setting-office User-Area Management','1','2019-10-02 19:02:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('f1fb9bad4a474669bf0d75016177ef1b','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:40:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=24&value=4&label=Other&type=sys_office_type&description=机构类型&sort=90&remarks=其它',''),('f2d42516edc74b9c94c10eed949190e7','1','System Setting-office User-Office Management-update','1','2019-10-02 19:00:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=5&parent.id=1&parent.name=South Australia Province&area.id=2&area.name=South Australia&name=Technology Department&code=100004&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('f2f7aa3222cd463d863336fd9d510407','1','System Setting-System Setting-Menu Management','1','2019-10-02 20:06:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/','GET','',''),('f2fdfa1c25ae491ea9fca08c368953ef','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=7&parentIds=0,1,7,',''),('f3ee64a37ad14738a57c52ff4e081129','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:39:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','',''),('f475a10ac52d46a5b86ea2e425984fcf','1','System Setting-office User-User Management','1','2019-10-02 20:04:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('f4eeecc3a3014d929a6c903844b59508','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:05:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=12&parentIds=0,1,7,12,',''),('f53b2f1b40bd406fa02d9a42775e7e5c','1','System Setting-系统设置-菜单管理-查看','1','2019-10-02 18:48:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/menu/form','GET','id=3',''),('f5800b09466a4b568f69f28a926c9280','1','System Setting-office User-User Management-查看','1','2019-10-02 19:59:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/form','GET','',''),('f5d0a8ea1d01487095541e179fbf49b5','1','System Setting-office User-Office Management-update','1','2019-10-02 19:02:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=9&parent.id=7&parent.name=Adelaide City Concil&area.id=3&area.name=Adelaide&name=City Groverment&code=200002&type=2&grade=2&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('f66eef651fb8403082c55448a387c3ad','1','在线办公-通知通告-我的通告','1','2019-10-02 18:44:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/oa/oaNotify/self','GET','',''),('f68dc9b508c341fb9b9d7aacc26850df','1','在线办公-通知通告-通告管理','1','2017-11-14 15:14:58','124.128.62.162','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36','/jeesite/a/oa/oaNotify','GET','tabPageId=jerichotabiframe_5',''),('f6d9c9a138b94e4fa66dc0d9f95e5ea8','1','内容管理-内容管理-内容发布','1','2019-10-03 00:29:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/','GET','',''),('f704aad143c341dd946744bb23dd95d0','1','System Setting-office User-Office Management-update','1','2019-10-02 19:53:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/save','POST','id=25&parent.id=22&parent.name=Genleg Council&area.id=6&area.name=Genleg&name=Genleg Level Marketing Department&code=201013&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('f76ebf9aef4b4f0cb5e0dae81b279580','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:34:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=cms_del_flag',''),('f798f7c78ded4a6ead07788d9cba4cf3','1','System Setting-office User-Office Management-查看','1','2019-10-02 19:06:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/form','GET','id=19',''),('f8b97f6a0e9c48d2b9777ec565637123','1','系统设置-机构用户-区域管理','1','2019-10-02 18:46:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('f8da31eb20634a67892561a703d089a2','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:36:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=20',''),('f90000319aca4045a56e5f9efd90dfe0','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:38:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=34&value=3&label=Get the data in this Companyt&type=sys_data_scope&description=数据范围&sort=30&remarks=所在公司数据',''),('f951103e205647a9b70507edf995993d','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:41:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('fa00070390a545b8ba157717bc92d4fa','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:34:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=9',''),('fa7e6045f2d34ab1b298b48855d9a793','1','内容管理-内容管理-内容发布-文章模型','1','2017-11-14 15:15:11','119.97.201.18','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('faf80298e8c74adb9108bc74c9d02f6d','1','System Setting-System Setting-Dictionary Management-update','1','2019-10-03 00:33:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/save','POST','id=27&value=3&label=Other Office&type=sys_office_common&description=快捷通用部门&sort=50&remarks=人力部',''),('fb50ce617db540d2b1e1b814225f3b1c','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:38:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','GET','repage=&type=sys_data_scope',''),('fbf7af56d271475eaea063abc7710df2','1','System Setting-office User-Area Management','1','2019-10-02 20:02:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/','GET','',''),('fc1a8b723deb44bb87a479ab3d2d4268','1','系统设置-机构用户-用户管理','1','2017-11-14 15:18:42','220.160.68.3','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('fce97952e9a5447e9760178a84286488','1','System Setting-System Setting-Dictionary Management-查看','1','2019-10-03 00:35:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/form','GET','id=2',''),('fd6305a0f9164d07be8f828cfe635357','1','System Setting-System Setting-Dictionary Management','1','2019-10-03 00:32:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('fd6b19360a664ada869f7f0764b9dd1b','1','System Setting-office User-User Management','1','2019-10-02 19:01:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/user/index','GET','',''),('fe0acc99193f457e85e0c67ee8e646a4','1','系统登录','1','2019-10-03 00:09:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a;JSESSIONID=cec1e470a7854d538ba12ff7f223752f','GET','login=',''),('fe3cf5b31a0344b2bda0f5aff9ca7363','1','系统设置-机构用户-机构管理-查看','1','2019-10-02 18:45:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/office/list','GET','id=&parentIds=',''),('fe931166bc2d4586981017e12849933f','1','内容管理-内容管理','1','2019-10-03 00:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/cms/tree','GET','',''),('feb99797694849d4a9a1be0d551d8632','1','System Setting-office User-Area Management-查看','1','2019-10-02 18:58:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36','/jeesite_war/a/sys/area/form','GET','id=5','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mdict`
--

LOCK TABLES `sys_mdict` WRITE;
/*!40000 ALTER TABLE `sys_mdict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','编辑',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','树结构',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','功能菜单',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','Dictionary Management',60,'/sys/dict/','','th-list','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:49:34','字典管理','0'),('11','10','0,1,2,3,10,','查看',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','update',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','office User',970,'','','','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:17','机构用户','0'),('14','13','0,1,2,13,','Area Management',50,'/sys/area/','','th','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:49','区域管理','0'),('15','14','0,1,2,13,14,','查看',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','update',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','Office Management',40,'/sys/office/','','th-large','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:39','机构管理','0'),('18','17','0,1,2,13,17,','查看',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','update',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','System Setting',900,'','','','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:00','系统设置','0'),('20','13','0,1,2,13,','User Management',30,'/sys/user/index','','user','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:30','用户管理','0'),('21','20','0,1,2,13,20,','查看',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','20','0,1,2,13,20,','update',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','关于帮助',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','23','0,1,2,23','官方首页',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','项目支持',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','论坛交流',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','DashBoard',100,'','','','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:46:38','我的面板','0'),('28','27','0,1,27,','Personal Information',30,'','','','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:47:03','个人信息','0'),('29','28','0,1,27,28,','Personal Information',30,'/sys/user/info','','user','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:47:27','个人信息','0'),('3','2','0,1,2,','System Setting',980,'','','','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:48:59','系统设置','0'),('30','28','0,1,27,28,','Update Password',40,'/sys/user/modifyPwd','','lock','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:47:40','修改密码','0'),('31','1','0,1,','内容管理',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','31','0,1,31,','栏目设置',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','32','0,1,31,32','栏目管理',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','33','0,1,31,32,33,','查看',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','33','0,1,31,32,33,','update',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','32','0,1,31,32','站点设置',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','36','0,1,31,32,36,','查看',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','36','0,1,31,32,36,','update',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','32','0,1,31,32','切换站点',50,'/cms/site/select',NULL,'retweet','1','cms:site:select','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','生成示例',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('4','3','0,1,2,3,','Menu Management',30,'/sys/menu/','','list-alt','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:49:11','菜单管理','0'),('40','31','0,1,31,','内容管理',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','40','0,1,31,40,','内容发布',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','41','0,1,31,40,41,','文章模型',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','42','0,1,31,40,41,42,','查看',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','42','0,1,31,40,41,42,','update',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','42','0,1,31,40,41,42,','审核',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','41','0,1,31,40,41,','链接模型',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','46','0,1,31,40,41,46,','查看',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','46','0,1,31,40,41,46,','update',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','查看',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','审核',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','4','0,1,2,3,4,','查看',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','评论管理',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','50','0,1,31,40,50,','查看',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','50','0,1,31,40,50,','审核',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','40','0,1,31,40,','公共留言',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','53','0,1,31,40,53,','查看',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','53','0,1,31,40,53,','审核',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','71','0,1,27,71,','文件管理',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','查看',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','上传',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','update',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','4','0,1,2,3,4,','update',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','统计分析',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','60','0,1,31,60,','信息量统计',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','0,1,','在线办公',200,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','62','0,1,62,','个人办公',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','请假办理',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','查看',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','64','0,1,62,63,64,','update',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','2','0,1,2,','日志查询',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','日志查询',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','流程管理',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','Role Management',50,'/sys/role/','','lock','1','','1','2013-05-27 08:00:00','1','2019-10-02 18:49:23','角色管理','0'),('70','69','0,1,62,69,','流程管理',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','文件管理',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','模型管理',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','我的任务',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','审批测试',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('75','1','0,1,','在线演示',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','代码生成',5000,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('8','7','0,1,2,3,7,','查看',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','代码生成',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','生成方案配置',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','业务表配置',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','代码模板管理',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','连接池监视',40,'/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 08:00:00','1','2013-10-18 08:00:00',NULL,'0'),('85','76','0,1,75,76,','行政区域',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','组件演示',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','组件演示',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','通知通告',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','我的通告',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','update',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','通告管理',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','编辑',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','主子表',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','单表',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','查看',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c7e4180ea0944770a2411029b020d439','c965e900251c442699226325929168a8','0,1,c965e900251c442699226325929168a8,','Vote',30,'','','','1','','1','2019-10-02 20:03:23','1','2019-10-02 20:03:23','投票功能','0'),('c965e900251c442699226325929168a8','1','0,1,','Vote',5030,'','','','1','','1','2019-10-02 20:03:08','1','2019-10-02 20:03:08','投票','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','编辑',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','查看',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','South Australia Province',10,'2','100000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','7','0,1,7,','City Marketing Department',30,'3','200003','2','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:02:13','','0'),('11','7','0,1,7,','City Technology Department',40,'3','200004','2','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:02:23','','0'),('12','7','0,1,7,','City Concil',0,'4','201000','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:04:46','','0'),('13','12','0,1,7,12,','City area leader',10,'4','201001','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:05:04','','0'),('14','12','0,1,7,12,','City Area Grovenment',20,'4','201002','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:05:15','','0'),('15','12','0,1,7,12,','City Area Marketing Department',30,'4','201003','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:05:28','','0'),('16','12','0,1,7,12,','City Area Technology Department',40,'4','201004','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:05:40','','0'),('17','7','0,1,7,','Norwood Council',40,'5','201010','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:06:24','','0'),('18','17','0,1,7,17,','Norwood Area Council',10,'5','201011','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:06:40','','0'),('19','17','0,1,7,17,','Norwood Area Grovernment',20,'5','201012','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:07:03','','0'),('2','1','0,1,','Leader',10,'2','100001','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 18:58:06','','0'),('20','17','0,1,7,17,','Norwood Area Marketing Department',30,'5','201013','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:07:18','','0'),('21','17','0,1,7,17,','Norwood Area Technology Department',40,'5','201014','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:07:33','','0'),('22','7','0,1,7,','Genleg Council',50,'6','201010','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:52:45','','0'),('23','22','0,1,7,22,','Genleg Level Leader',10,'6','201011','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:53:30','','0'),('24','22','0,1,7,22,','Genleg Level Grovenment',20,'6','201012','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:53:40','','0'),('25','22','0,1,7,22,','Genleg Level Marketing Department',30,'6','201013','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:53:53','','0'),('26','22','0,1,7,22,','Genleg Level Techonology Department',40,'6','201014','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:54:08','','0'),('3','1','0,1,','Grovernment',20,'2','100002','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:00:18','','0'),('4','1','0,1,','Market Department',30,'2','100003','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:00:29','','0'),('5','1','0,1,','Technology Department',40,'2','100004','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:00:42','','0'),('6','1','0,1,','Police Station',50,'2','100005','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:00:58','','0'),('7','1','0,1,','Adelaide City Concil',20,'3','200000','1','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:01:29','','0'),('8','7','0,1,7,','City leader',10,'3','200001','2','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:01:37','','0'),('9','7','0,1,7,','City Groverment',20,'3','200002','2','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-10-02 19:02:01','','0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','1','System Admin','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:58:47','','0'),('2','1','Highest level admin','hr','assignment','2','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:58:55','','0'),('3','1','Grovement Officer','a','assignment','3','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:57:12','','0'),('4','1','Office Admin','b','assignment','4','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:59:01','','0'),('5','1','Middle Level Officer','c','assignment','5','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:58:39','','0'),('6','1','Normal Voter','d','assignment','8','1','1','1','2013-05-27 08:00:00','1','2019-10-02 20:06:20','','0'),('7','7','City Office Admin','e','assignment','9','1','1','1','2013-05-27 08:00:00','1','2019-10-02 19:59:10','','0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES ('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','22'),('1','23'),('1','24'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','33'),('1','34'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','47'),('1','48'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','62'),('1','63'),('1','64'),('1','65'),('1','66'),('1','67'),('1','68'),('1','69'),('1','7'),('1','70'),('1','71'),('1','72'),('1','73'),('1','74'),('1','79'),('1','8'),('1','80'),('1','81'),('1','82'),('1','84'),('1','85'),('1','88'),('1','89'),('1','9'),('1','90'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','22'),('2','23'),('2','24'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','6'),('2','60'),('2','61'),('2','62'),('2','63'),('2','64'),('2','65'),('2','66'),('2','67'),('2','68'),('2','69'),('2','7'),('2','70'),('2','71'),('2','72'),('2','73'),('2','74'),('2','79'),('2','8'),('2','80'),('2','81'),('2','82'),('2','84'),('2','85'),('2','88'),('2','89'),('2','9'),('2','90'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','84'),('3','85'),('3','88'),('3','89'),('3','9'),('3','90'),('6','1'),('6','27'),('6','28'),('6','29'),('6','30'),('6','c7e4180ea0944770a2411029b020d439'),('6','c965e900251c442699226325929168a8');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_office`
--

DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_office`
--

LOCK TABLES `sys_role_office` WRITE;
/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
INSERT INTO `sys_role_office` VALUES ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','1','2','thinkgem','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0001','系统管理员','thinkgem@163.com','8675','8675',NULL,NULL,'0:0:0:0:0:0:0:1','2019-10-03 00:29:16','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','最高管理员','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','济南技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','济南历城领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','济南历下领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','济南高新领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','研发部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','济南领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','济南综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','济南市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('a5c75a64e01f437f9d0b00d5c2eb2f38','22','3','a1752399','40ba3af6555dc9192a41ac567c6101352f87bb4848f1d92ef99a13fb','a1752399','Jianqi zeng','','','','','','0:0:0:0:0:0:0:1','2019-10-02 20:14:24','1','1','2019-10-02 20:04:52','1','2019-10-02 20:06:02','','0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('1','1'),('1','2'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1'),('a5c75a64e01f437f9d0b00d5c2eb2f38','6');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data`
--

DROP TABLE IF EXISTS `test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data`
--

LOCK TABLES `test_data` WRITE;
/*!40000 ALTER TABLE `test_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_child`
--

DROP TABLE IF EXISTS `test_data_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_child`
--

LOCK TABLES `test_data_child` WRITE;
/*!40000 ALTER TABLE `test_data_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_main`
--

DROP TABLE IF EXISTS `test_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_main`
--

LOCK TABLES `test_data_main` WRITE;
/*!40000 ALTER TABLE `test_data_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_tree`
--

DROP TABLE IF EXISTS `test_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT 'Update Time',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'Recomment',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_tree`
--

LOCK TABLES `test_tree` WRITE;
/*!40000 ALTER TABLE `test_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_tree` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03  0:45:44
