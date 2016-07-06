<?php

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['realurl'] = [
    '_DEFAULT' => [
        'init' => [
            'enableCHashCache' => true,
            'appendMissingSlash' => 'ifNotFile,redirect',
            'adminJumpToBackend' => true,
            'enableUrlDecodeCache' => true,
            'enableUrlEncodeCache' => false,
            'reapplyAbsRefPrefix' => true,
            'postVarSet_failureMode' => 'redirect_goodUpperDir'
        ],
        'pagePath' => [
            'type'           => 'user',
            'spaceCharacter' => '-',
            'languageGetVar' => 'L',
            'rootpage_id'    => '1',
        ],
        'fileName' => [
            'acceptHTMLsuffix' => false,
            'index' => [
                'sitemap.xml' => [
                    'keyValues' => [
                        'type' => 776,
                    ]
                ]
            ]
        ],
        'preVars' => [
            [
                'GETvar' => 'L',
                'valueMap' => [
                    'en' => '0',
                    'de' => '1',
                    'dk' => '2',
                ],
                'noMatch' => 'bypass',
            ]
        ],
        'postVarSets' => [
            '_DEFAULT' => [
                'page' => [
                    [
                        'GETvar' => 'page',
                    ]
                ]
            ]
        ],
        'fixedPostVars' => [
            // Empty
        ]
    ]
];
