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
                'charset' => 'utf-8',
                'dbname' => 'bootstrap',
                'driver' => 'mysqli',
                'host' => '127.0.0.1',
                'password' => 'bootstrap_p',
                'port' => 3306,
                'unix_socket' => '',
                'user' => 'bootstrap_u',
            ],
        ],
    ],
    'EXT' => [
        'extConf' => [
            'adodb' => 'a:0:{}',
            'bootstrap_package' => 'a:10:{s:21:"disableLessProcessing";s:1:"0";s:36:"disablePageTsNewContentElementWizard";s:1:"0";s:30:"disablePageTsTtContentPreviews";s:1:"0";s:16:"disablePageTsRTE";s:1:"1";s:20:"disablePageTsTCEFORM";s:1:"0";s:20:"disablePageTsTCEMAIN";s:1:"0";s:21:"disablePageTsAdmPanel";s:1:"0";s:27:"disablePageTsBackendLayouts";s:1:"0";s:4:"Logo";s:84:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/TopBarLogo@2x.png";s:9:"LoginLogo";s:80:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/LoginLogo.png";}',
            'css_styled_content' => 'a:1:{s:32:"loadContentElementWizardTsConfig";s:1:"1";}',
            'dbal' => 'a:2:{s:10:"sql_query.";a:1:{s:11:"passthrough";s:1:"1";}s:13:"Compatibility";s:0:"";}',
            'feedit' => 'a:0:{}',
            'linkvalidator' => 'a:0:{}',
            'realurl' => 'a:5:{s:10:"configFile";s:26:"typo3conf/realurl_conf.php";s:14:"enableAutoConf";s:1:"1";s:14:"autoConfFormat";s:1:"1";s:12:"enableDevLog";s:1:"0";s:19:"enableChashUrlDebug";s:1:"0";}',
            'rsaauth' => 'a:1:{s:18:"temporaryDirectory";s:0:"";}',
            'rtehtmlarea' => 'a:8:{s:21:"noSpellCheckLanguages";s:23:"ja,km,ko,lo,th,zh,b5,gb";s:15:"AspellDirectory";s:15:"/usr/bin/aspell";s:20:"defaultConfiguration";s:105:"Typical (Most commonly used features are enabled. Select this option if you are unsure which one to use.)";s:12:"enableImages";s:1:"1";s:20:"enableInlineElements";s:1:"0";s:19:"allowStyleAttribute";s:1:"1";s:24:"enableAccessibilityIcons";s:1:"0";s:16:"forceCommandMode";s:1:"0";}',
            'saltedpasswords' => 'a:2:{s:3:"BE.";a:4:{s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}s:3:"FE.";a:5:{s:7:"enabled";i:1;s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}}',
            'scheduler' => 'a:4:{s:11:"maxLifetime";s:4:"1440";s:11:"enableBELog";s:1:"1";s:15:"showSampleTasks";s:1:"1";s:11:"useAtdaemon";s:1:"0";}',
            'styleguide' => 'a:32:{s:8:"string_1";s:5:"value";s:8:"string_2";s:0:"";s:7:"small_1";s:5:"value";s:7:"small_2";s:0:"";s:6:"wrap_1";s:5:"value";s:6:"wrap_2";s:0:"";s:7:"color_1";s:5:"black";s:7:"color_2";s:7:"#000000";s:7:"color_3";s:6:"000000";s:7:"color_4";s:0:"";s:8:"offset_1";s:3:"x,y";s:8:"offset_2";s:1:"x";s:8:"offset_3";s:2:",y";s:8:"offset_4";s:0:"";s:6:"user_1";s:1:"0";s:9:"options_1";s:7:"default";s:9:"options_2";s:8:"option_2";s:9:"options_3";s:0:"";s:9:"boolean_1";s:1:"0";s:9:"boolean_2";s:1:"1";s:9:"boolean_3";s:0:"";s:5:"int_1";s:1:"1";s:5:"int_2";s:0:"";s:9:"integer_1";s:1:"1";s:9:"integer_2";s:0:"";s:9:"intplus_1";s:1:"1";s:9:"intplus_2";s:0:"";s:9:"intplus_3";s:4:"-100";s:14:"compat_input_1";s:5:"value";s:14:"compat_input_2";s:0:"";s:16:"compat_default_1";s:5:"value";s:16:"compat_default_2";s:0:"";}',
            'sys_action' => 'a:0:{}',
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
        'processor' => 'GraphicsMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'RGB',
        'processor_effects' => -1,
        'processor_enabled' => true,
        'processor_path' => 'C:/Program Files (x86)/GraphicsMagick-1.3.23-Q16/',
        'processor_path_lzw' => 'C:/Program Files (x86)/GraphicsMagick-1.3.23-Q16/',
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
        'sitename' => 'Bootstrap Package Box',
        'sqlDebug' => 1,
        'systemLogLevel' => 0,
    ],
];
