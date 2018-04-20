<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'i4575396_wp1');

/** MySQL database username */
define('DB_USER', 'i4575396_wp1');

/** MySQL database password */
define('DB_PASSWORD', 'G~uWCUk14eZVae0CJ2.27*#0');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'mxyMmynjL3z9XiwyGKwEsmWiir6SlVJFCZPvMROH4lOC6AA6uyYiuSvsEeDmXm55');
define('SECURE_AUTH_KEY',  'MzXI8idWGRGOoJD2APb6cq4b45majNa4L05o0n39Hgky42IAhfbyF6y2WjG5mVab');
define('LOGGED_IN_KEY',    'gG5Z57pIgYJP1pxKtOwpP50EniGnvpzka7VXBhiAZECSEe1jlZfHO5HBxDms1xV2');
define('NONCE_KEY',        'N4Zr5PMLsojTVrd6xRJ5oqn5dFfsIJqlM7FgpdvRjawEDpkku7KBTKXD6DLCbNjN');
define('AUTH_SALT',        'A0GXTm5LEQSdxdRGu1AIVPQVCnERsFEwtPyEfGnAIzKtilx4uODDCRjRDgSWCKYZ');
define('SECURE_AUTH_SALT', 'i7Ahobkmr4PolPW9hHz7ulPlxbJEceaaHvGzgmHJduq7klbo12Yqdv8V0IUYj1JW');
define('LOGGED_IN_SALT',   'OmTFW7QpvdfVNiTrln4tA73PTrtjP85Z4p6YgDenMe2n0H79JNusWXD1HhRPbCzO');
define('NONCE_SALT',       'vpu2QXLah5BkcvETx8zRwFOILG5CQWZs1XQBCu4VeADaprrytvvnAETXldoxhOj6');

/**
 * Other customizations.
 */
define('FS_METHOD','direct');define('FS_CHMOD_DIR',0755);define('FS_CHMOD_FILE',0644);
define('WP_TEMP_DIR',dirname(__FILE__).'/wp-content/uploads');

/**
 * Turn off automatic updates since these are managed upstream.
 */
define('AUTOMATIC_UPDATER_DISABLED', true);


/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
