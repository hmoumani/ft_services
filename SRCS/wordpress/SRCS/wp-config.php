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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wpuser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Vkh72,d}7ARykd!UH(NkB&N+wC;0k1A-6oIq>|POxnd}Z4fl[hBd>LGM3&?WA~x=' );
define( 'SECURE_AUTH_KEY',  '*lwhM]v>Z{[?><pq8!F+q9+/TaW;Viax)0pP4ZW>a0)1G&*^ O >JrG$`sPYdMQx' );
define( 'LOGGED_IN_KEY',    'd,o8Y1(@^bhkWPO}{,qDJcq/VCX;}9dCRs--^um)dr-[mlT*jQy5+2(ELlwKtzPj' );
define( 'NONCE_KEY',        '#YZ_Q#lsflcP)j?ba,B}kGx^@XBXy?{q=ctWo:`k)E%o[4I]*gwoKFtSyx-_mI_|' );
define( 'AUTH_SALT',        'X}]yW/y9Y>Y$ B*Kk-h7z1(0f;<^g:we{Z&eb-,8(%Je5H$UntS3<__qs>%G|&m!' );
define( 'SECURE_AUTH_SALT', 'b=qs pN9w2|28Q|:YYp9 2WD[UYC`:*8Y^}aMI66k|C)Z]k?r@hrwTyKW..#/o>a' );
define( 'LOGGED_IN_SALT',   '82lP+iF8joyt9OfUQ.[fPSwZntiX]qb`TxV?=Xc~&x[*<QFk/*w7=K{^oK@!AoaC' );
define( 'NONCE_SALT',       'y2-_fE~i<qXZfkP:2N$>k}zY`A~1[E8sxH` 9[RimhK&3*y{G-`[0% Fh15}>T?.' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';