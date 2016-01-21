<?php
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['realurl']=array (
  '_DEFAULT' => 
  array (
    'init' => 
    array (
      'enableCHashCache' => true,
      'appendMissingSlash' => 'ifNotFile,redirect',
      'adminJumpToBackend' => true,
      'enableUrlDecodeCache' => true,
      'enableUrlEncodeCache' => true,
      'emptyUrlReturnValue' => '/',
    ),
    'pagePath' => 
    array (
      'type' => 'user',
      'userFunc' => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
      'spaceCharacter' => '-',
      'languageGetVar' => 'L',
      'rootpage_id' => '1',
    ),
    'fileName' => 
    array (
      'defaultToHTMLsuffixOnPrev' => 0,
      'acceptHTMLsuffix' => 1,
      'index' => 
      array (
        'print' => 
        array (
          'keyValues' => 
          array (
            'type' => 98,
          ),
        ),
      ),
    ),
    'preVars' => 
    array (
      0 => 
      array (
        'GETvar' => 'no_cache',
        'valueMap' => 
        array (
          'nc' => '1',
        ),
        'noMatch' => 'bypass',
      ),
      1 => 
      array (
        'GETvar' => 'L',
        'valueMap' => 
        array (
          'de' => '1',
          'da' => '2',
        ),
        'noMatch' => 'bypass',
      ),
    ),
    'postVarSets' => 
    array (
      '_DEFAULT' => 
      array (
        'page' => 
        array (
          0 => 
          array (
            'GETvar' => 'page',
          ),
        ),
      ),
    ),
  ),
);
