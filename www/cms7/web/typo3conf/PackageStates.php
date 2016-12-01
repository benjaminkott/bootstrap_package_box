<?php
# PackageStates.php

# This file is maintained by TYPO3's package management. Although you can edit it
# manually, you should rather use the extension manager for maintaining packages.
# This file will be regenerated automatically if it doesn't exist. Deleting this file
# should, however, never become necessary if you use the package commands.

return [
    'packages' => [
        'core' => [
            'packagePath' => 'typo3/sysext/core/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-core',
        ],
        'extbase' => [
            'packagePath' => 'typo3/sysext/extbase/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-extbase',
        ],
        'fluid' => [
            'packagePath' => 'typo3/sysext/fluid/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-fluid',
        ],
        'documentation' => [
            'composerName' => 'typo3/cms-documentation',
            'state' => 'active',
            'packagePath' => 'typo3/sysext/documentation/',
            'suggestions' => [],
        ],
        'info' => [
            'packagePath' => 'typo3/sysext/info/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-info',
            'state' => 'active',
        ],
        'info_pagetsconfig' => [
            'packagePath' => 'typo3/sysext/info_pagetsconfig/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-info-pagetsconfig',
            'state' => 'active',
        ],
        'extensionmanager' => [
            'packagePath' => 'typo3/sysext/extensionmanager/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-extensionmanager',
        ],
        'lang' => [
            'packagePath' => 'typo3/sysext/lang/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-lang',
        ],
        'linkvalidator' => [
            'packagePath' => 'typo3/sysext/linkvalidator/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-linkvalidator',
            'state' => 'active',
        ],
        'setup' => [
            'packagePath' => 'typo3/sysext/setup/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-setup',
            'state' => 'active',
        ],
        'rtehtmlarea' => [
            'packagePath' => 'typo3/sysext/rtehtmlarea/',
            'suggestions' => [
                'setup',
            ],
            'composerName' => 'typo3/cms-rtehtmlarea',
            'state' => 'active',
        ],
        'rsaauth' => [
            'packagePath' => 'typo3/sysext/rsaauth/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-rsaauth',
            'state' => 'active',
        ],
        'saltedpasswords' => [
            'packagePath' => 'typo3/sysext/saltedpasswords/',
            'state' => 'active',
            'suggestions' => [
                'rsaauth',
            ],
            'composerName' => 'typo3/cms-saltedpasswords',
        ],
        'taskcenter' => [
            'packagePath' => 'typo3/sysext/taskcenter/',
            'suggestions' => [
                'sys_action',
            ],
            'composerName' => 'typo3/cms-taskcenter',
            'state' => 'active',
        ],
        'sys_action' => [
            'packagePath' => 'typo3/sysext/sys_action/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-sys-action',
            'state' => 'active',
        ],
        'func' => [
            'packagePath' => 'typo3/sysext/func/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-func',
            'state' => 'active',
        ],
        'wizard_crpages' => [
            'packagePath' => 'typo3/sysext/wizard_crpages/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-wizard-crpages',
            'state' => 'active',
        ],
        'wizard_sortpages' => [
            'packagePath' => 'typo3/sysext/wizard_sortpages/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-wizard-sortpages',
            'state' => 'active',
        ],
        'version' => [
            'packagePath' => 'typo3/sysext/version/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-version',
            'state' => 'active',
        ],
        'workspaces' => [
            'packagePath' => 'typo3/sysext/workspaces/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-workspaces',
            'state' => 'active',
        ],
        'about' => [
            'packagePath' => 'typo3/sysext/about/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-about',
            'state' => 'active',
        ],
        'aboutmodules' => [
            'composerName' => 'typo3/cms-aboutmodules',
            'state' => 'active',
            'packagePath' => 'typo3/sysext/aboutmodules/',
            'suggestions' => [],
        ],
        'backend' => [
            'packagePath' => 'typo3/sysext/backend/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-backend',
        ],
        'belog' => [
            'packagePath' => 'typo3/sysext/belog/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-belog',
            'state' => 'active',
        ],
        'beuser' => [
            'packagePath' => 'typo3/sysext/beuser/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-beuser',
            'state' => 'active',
        ],
        'context_help' => [
            'packagePath' => 'typo3/sysext/context_help/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-context-help',
            'state' => 'active',
        ],
        'cshmanual' => [
            'packagePath' => 'typo3/sysext/cshmanual/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-cshmanual',
            'state' => 'active',
        ],
        'felogin' => [
            'packagePath' => 'typo3/sysext/felogin/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-felogin',
            'state' => 'active',
        ],
        'filelist' => [
            'packagePath' => 'typo3/sysext/filelist/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-filelist',
            'state' => 'active',
        ],
        'form' => [
            'packagePath' => 'typo3/sysext/form/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-form',
            'state' => 'active',
        ],
        'frontend' => [
            'packagePath' => 'typo3/sysext/frontend/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-frontend',
        ],
        'impexp' => [
            'packagePath' => 'typo3/sysext/impexp/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-impexp',
            'state' => 'active',
        ],
        'install' => [
            'packagePath' => 'typo3/sysext/install/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-install',
        ],
        'lowlevel' => [
            'packagePath' => 'typo3/sysext/lowlevel/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-lowlevel',
            'state' => 'active',
        ],
        'opendocs' => [
            'composerName' => 'typo3/cms-opendocs',
            'state' => 'active',
            'packagePath' => 'typo3/sysext/opendocs/',
            'suggestions' => [],
        ],
        'recordlist' => [
            'packagePath' => 'typo3/sysext/recordlist/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-recordlist',
        ],
        'recycler' => [
            'packagePath' => 'typo3/sysext/recycler/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-recycler',
            'state' => 'active',
        ],
        'reports' => [
            'packagePath' => 'typo3/sysext/reports/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-reports',
            'state' => 'active',
        ],
        'scheduler' => [
            'packagePath' => 'typo3/sysext/scheduler/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-scheduler',
            'state' => 'active',
        ],
        'sv' => [
            'packagePath' => 'typo3/sysext/sv/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-sv',
        ],
        'sys_note' => [
            'packagePath' => 'typo3/sysext/sys_note/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-sys-note',
            'state' => 'active',
        ],
        't3editor' => [
            'packagePath' => 'typo3/sysext/t3editor/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-t3editor',
            'state' => 'active',
        ],
        't3skin' => [
            'packagePath' => 'typo3/sysext/t3skin/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'typo3/cms-t3skin',
        ],
        'tstemplate' => [
            'packagePath' => 'typo3/sysext/tstemplate/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-tstemplate',
            'state' => 'active',
        ],
        'viewpage' => [
            'packagePath' => 'typo3/sysext/viewpage/',
            'suggestions' => [],
            'composerName' => 'typo3/cms-viewpage',
            'state' => 'active',
        ],
        'bootstrap_package' => [
            'packagePath' => 'typo3conf/ext/bootstrap_package/',
            'state' => 'active',
            'suggestions' => [],
            'composerName' => 'bk2k/bootstrap-package',
        ],
        'adodb' => [
            'composerName' => 'typo3/cms-adodb',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/adodb/',
            'suggestions' => [],
        ],
        'css_styled_content' => [
            'composerName' => 'typo3/cms-css-styled-content',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/css_styled_content/',
            'suggestions' => [],
        ],
        'dbal' => [
            'composerName' => 'typo3/cms-dbal',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/dbal/',
            'suggestions' => [],
        ],
        'feedit' => [
            'composerName' => 'typo3/cms-feedit',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/feedit/',
            'suggestions' => [],
        ],
        'filemetadata' => [
            'composerName' => 'typo3/cms-filemetadata',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/filemetadata/',
            'suggestions' => [],
        ],
        'fluid_styled_content' => [
            'composerName' => 'typo3/cms-fluid-styled-content',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/fluid_styled_content/',
            'suggestions' => [],
        ],
        'indexed_search' => [
            'composerName' => 'typo3/cms-indexed-search',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/indexed_search/',
            'suggestions' => [],
        ],
        'indexed_search_mysql' => [
            'composerName' => 'typo3/cms-indexed-search-mysql',
            'state' => 'inactive',
            'packagePath' => 'typo3/sysext/indexed_search_mysql/',
            'suggestions' => [],
        ],
    ],
    'version' => 4,
];
