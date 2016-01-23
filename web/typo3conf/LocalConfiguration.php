<?php
return [
    'BE' => [
        'debug' => false,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$P$CWJlc4hpVVo1mq6cG2LeM0okJgBE1Q0',
        'loginSecurityLevel' => 'rsa',
    ],
    'DB' => [
        'database' => 'bootstrap',
        'host' => '127.0.0.1',
        'password' => 'bootstrap_p',
        'port' => 3306,
        'socket' => '',
        'username' => 'bootstrap_u',
    ],
    'EXT' => [
        'extConf' => [
            'bootstrap_package' => 'a:8:{s:21:"disableLessProcessing";s:1:"0";s:16:"disablePageTsRTE";s:1:"0";s:20:"disablePageTsTCEFORM";s:1:"0";s:20:"disablePageTsTCEMAIN";s:1:"0";s:21:"disablePageTsAdmPanel";s:1:"0";s:27:"disablePageTsBackendLayouts";s:1:"0";s:4:"Logo";s:84:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/TopBarLogo@2x.png";s:9:"LoginLogo";s:80:"../typo3conf/ext/bootstrap_package/Resources/Public/Images/Backend/LoginLogo.png";}',
            'realurl' => 'a:5:{s:10:"configFile";s:26:"typo3conf/realurl_conf.php";s:14:"enableAutoConf";s:1:"1";s:14:"autoConfFormat";s:1:"1";s:12:"enableDevLog";s:1:"0";s:19:"enableChashUrlDebug";s:1:"0";}',
            'rsaauth' => 'a:1:{s:18:"temporaryDirectory";s:0:"";}',
            'saltedpasswords' => 'a:2:{s:3:"BE.";a:4:{s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}s:3:"FE.";a:5:{s:7:"enabled";i:1;s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}}',
        ],
    ],
    'FE' => [
        'debug' => false,
        'loginSecurityLevel' => 'rsa',
    ],
    'GFX' => [
        'colorspace' => 'sRGB',
        'im' => 1,
        'im_mask_temp_ext_gif' => 1,
        'im_path' => '/usr/bin/',
        'im_path_lzw' => '/usr/bin/',
        'im_v5effects' => 1,
        'im_version_5' => 'im6',
        'image_processing' => 1,
        'jpg_quality' => '80',
    ],
    'INSTALL' => [
        'wizardDone' => [
            'TYPO3\CMS\Install\Updates\AccessRightParametersUpdate' => 1,
            'TYPO3\CMS\Install\Updates\BackendUserStartModuleUpdate' => 1,
            'TYPO3\CMS\Install\Updates\Compatibility6ExtractionUpdate' => 1,
            'TYPO3\CMS\Install\Updates\ContentTypesToTextMediaUpdate' => 1,
            'TYPO3\CMS\Install\Updates\FileListIsStartModuleUpdate' => 1,
            'TYPO3\CMS\Install\Updates\FilesReplacePermissionUpdate' => 1,
            'TYPO3\CMS\Install\Updates\LanguageIsoCodeUpdate' => 1,
            'TYPO3\CMS\Install\Updates\MediaceExtractionUpdate' => 1,
            'TYPO3\CMS\Install\Updates\MigrateMediaToAssetsForTextMediaCe' => 1,
            'TYPO3\CMS\Install\Updates\MigrateShortcutUrlsAgainUpdate' => 1,
            'TYPO3\CMS\Install\Updates\OpenidExtractionUpdate' => 1,
            'TYPO3\CMS\Install\Updates\PageShortcutParentUpdate' => 1,
            'TYPO3\CMS\Install\Updates\ProcessedFileChecksumUpdate' => 1,
            'TYPO3\CMS\Install\Updates\TableFlexFormToTtContentFieldsUpdate' => 1,
            'TYPO3\CMS\Install\Updates\WorkspacesNotificationSettingsUpdate' => 1,
            'TYPO3\CMS\Rtehtmlarea\Hook\Install\DeprecatedRteProperties' => 1,
            'TYPO3\CMS\Rtehtmlarea\Hook\Install\RteAcronymButtonRenamedToAbbreviation' => 1,
        ],
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
        'clearCacheSystem' => false,
        'devIPmask' => '',
        'displayErrors' => 0,
        'enableDeprecationLog' => false,
        'encryptionKey' => 'cabf22679314d6a33393c822e03f0a2ec9a42a95bca24bf7d29a8d9c1b047a6a7f50f8d201601f33e468b97c1f64fd7e',
        'isInitialDatabaseImportDone' => true,
        'isInitialInstallationInProgress' => false,
        'sitename' => 'Bootstrap Package Box',
        'sqlDebug' => 0,
        'systemLogLevel' => 2,
        't3lib_cs_convMethod' => 'mbstring',
        't3lib_cs_utils' => 'mbstring',
    ],
];
