<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$P$CWJlc4hpVVo1mq6cG2LeM0okJgBE1Q0',
        'loginSecurityLevel' => 'rsa',
        'versionNumberInFilename' => '0',
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'dbname' => 'cms8_bootstrap',
                'driver' => 'mysqli',
                'host' => '127.0.0.1',
                'password' => 'bootstrap',
                'port' => 3306,
                'user' => 'bootstrap',
            ],
        ],
    ],
    'EXT' => [
        'extConf' => [
            'backend' => 'a:5:{s:9:"loginLogo";s:0:"";s:19:"loginHighlightColor";s:0:"";s:20:"loginBackgroundImage";s:0:"";s:11:"backendLogo";s:0:"";s:14:"backendFavicon";s:0:"";}',
            'bootstrap_package' => 'a:10:{s:16:"disablePageTsRTE";s:1:"0";s:27:"disablePageTsBackendLayouts";s:1:"0";s:20:"disablePageTsTCEMAIN";s:1:"0";s:20:"disablePageTsTCEFORM";s:1:"0";s:30:"disablePageTsTtContentPreviews";s:1:"0";s:36:"disablePageTsNewContentElementWizard";s:1:"0";s:21:"disableLessProcessing";s:1:"0";s:21:"disablePageTsAdmPanel";s:1:"0";s:4:"Logo";s:84:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/TopBarLogo@2x.png";s:9:"LoginLogo";s:80:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/LoginLogo.png";}',
            'documentation' => 'a:0:{}',
            'feedit' => 'a:0:{}',
            'indexed_search' => 'a:19:{s:8:"pdftools";s:9:"/usr/bin/";s:8:"pdf_mode";s:2:"20";s:5:"unzip";s:9:"/usr/bin/";s:6:"catdoc";s:9:"/usr/bin/";s:6:"xlhtml";s:9:"/usr/bin/";s:7:"ppthtml";s:9:"/usr/bin/";s:5:"unrtf";s:9:"/usr/bin/";s:9:"debugMode";s:1:"0";s:18:"fullTextDataLength";s:1:"0";s:23:"disableFrontendIndexing";s:1:"0";s:21:"enableMetaphoneSearch";s:1:"1";s:6:"minAge";s:2:"24";s:6:"maxAge";s:1:"0";s:16:"maxExternalFiles";s:1:"5";s:26:"useCrawlerForExternalFiles";s:1:"0";s:11:"flagBitMask";s:3:"192";s:16:"ignoreExtensions";s:0:"";s:17:"indexExternalURLs";s:1:"0";s:16:"useMysqlFulltext";s:1:"0";}',
            'linkvalidator' => 'a:0:{}',
            'opendocs' => 'a:0:{}',
            'realurl' => 'a:5:{s:10:"configFile";s:26:"typo3conf/realurl_conf.php";s:14:"enableAutoConf";s:1:"1";s:14:"autoConfFormat";s:1:"0";s:12:"enableDevLog";s:1:"0";s:10:"moduleIcon";s:1:"0";}',
            'recycler' => 'a:0:{}',
            'rsaauth' => 'a:1:{s:18:"temporaryDirectory";s:0:"";}',
            'rte_ckeditor' => 'a:0:{}',
            'saltedpasswords' => 'a:2:{s:3:"BE.";a:4:{s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}s:3:"FE.";a:5:{s:7:"enabled";i:1;s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}}',
            'scheduler' => 'a:4:{s:11:"maxLifetime";s:4:"1440";s:11:"enableBELog";s:1:"1";s:15:"showSampleTasks";s:1:"1";s:11:"useAtdaemon";s:1:"0";}',
            'sys_action' => 'a:0:{}',
            't3editor' => 'a:0:{}',
            'taskcenter' => 'a:0:{}',
            'version' => 'a:0:{}',
            'workspaces' => 'a:0:{}',
        ],
    ],
    'EXTCONF' => [
        'lang' => [
            'availableLanguages' => [],
        ],
    ],
    'FE' => [
        'debug' => true,
        'loginSecurityLevel' => 'rsa',
    ],
    'GFX' => [
        'jpg_quality' => '80',
        'processor' => 'ImageMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'sRGB',
        'processor_effects' => 1,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
        'processor_path_lzw' => '/usr/bin/',
    ],
    'INSTALL' => [
        'wizardDone' => [],
    ],
    'MAIL' => [
        'transport_sendmail_command' => '/usr/sbin/sendmail -t -i ',
    ],
    'SYS' => [
        'caching' => [
            'cacheConfigurations' => [
                'extbase_object' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'frontend' => 'TYPO3\\CMS\\Core\\Cache\\Frontend\\VariableFrontend',
                    'groups' => [
                        'system',
                    ],
                    'options' => [
                        'defaultLifetime' => 0,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'enableDeprecationLog' => 'file',
        'encryptionKey' => 'cabf22679314d6a33393c822e03f0a2ec9a42a95bca24bf7d29a8d9c1b047a6a7f50f8d201601f33e468b97c1f64fd7e',
        'exceptionalErrors' => 28674,
        'isInitialDatabaseImportDone' => true,
        'isInitialInstallationInProgress' => false,
        'sitename' => 'Bootstrap Package Box CMS8',
        'sqlDebug' => 1,
        'systemLogLevel' => 0,
    ],
];
