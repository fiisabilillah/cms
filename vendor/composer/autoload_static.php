<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit93b42c23c5f9784d86359a1b2aa8d5d6
{
    public static $prefixLengthsPsr4 = array (
        'I' => 
        array (
            'Ifsnop\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Ifsnop\\' => 
        array (
            0 => __DIR__ . '/..' . '/ifsnop/mysqldump-php/src/Ifsnop',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit93b42c23c5f9784d86359a1b2aa8d5d6::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit93b42c23c5f9784d86359a1b2aa8d5d6::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit93b42c23c5f9784d86359a1b2aa8d5d6::$classMap;

        }, null, ClassLoader::class);
    }
}