{install:drop_tables}DROP TABLE IF EXISTS `{install:prefix}pages`;
CREATE TABLE `{install:prefix}pages` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `menus` set('main','bottom','account','inventory') NOT NULL DEFAULT 'main',
  `status` enum('inactive','active','draft') NOT NULL default 'inactive',
  `last_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `plugin` varchar(50) NOT NULL DEFAULT '',
  `order` float NOT NULL default '0',
  `unique_url` varchar(150) NOT NULL,
  `non_modrewrite_url` VARCHAR( 150 ) NOT NULL,
  `custom_url` varchar(255) NOT NULL default '',
  `meta_description` tinytext,
  `meta_keywords` tinytext,
  `nofollow` enum('1','0') NOT NULL default '0',
  `readonly` enum('0','1') NOT NULL default '0',
  `group` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) {install:mysql_version};

INSERT INTO `{install:prefix}pages` VALUES 
(NULL, 'index', 'main,inventory', 'active', NOW(), '', 1, 'index.php', 'index.php', '', '', '', '0', '0', 'miscellaneous'),
(NULL, 'index_browse', '', 'active', NOW(), '', '0', '', '', '', '', '', '0', '0', 'miscellaneous'),
(NULL, 'search', 'main,inventory', 'active', NOW(), '', 2, 'search.php', 'search.php', '', '', '', '0', '0', 'listings'),
(NULL, 'new_listings', 'main', 'active', NOW(), '', 3, 'new-listings.html', 'listings.php?view=new', '', '', '', '0', '0', 'listings'),
(NULL, 'top_listings', 'main', 'active', NOW(), '', 4, 'top-listings.html', 'listings.php?view=top', '', '', '', '0', '0', 'listings'),
(NULL, 'popular_listings', 'main', 'active', NOW(), '', 5, 'popular-listings.html', 'listings.php?view=popular', '', '', '', '0', '0', 'listings'),
(NULL, 'random_listings', 'main', 'active', NOW(), '', 6, 'random-listings.html', 'listings.php?view=random', '', '', '', '0', '0', 'listings'),
(NULL, 'suggest_listing', 'main,inventory', 'active', NOW(), '', 7, 'suggest-listing.php?id={idcat}', 'suggest-listing.php?id={idcat}', '', '', '', '1', '0', 'listings'),
(NULL, 'suggest_category', 'main', 'active', NOW(), '', 8, 'suggest-category.php?id={idcat}', 'suggest-category.php?id={idcat}', '', '', '', '1', '0', 'miscellaneous'),
(NULL, 'account_listings', 'account', 'active', NOW(), '', 9, 'account-listings.html', 'listings.php?view=account', '', '', '', '0', '0', 'listings'),
(NULL, 'favorites_listings', 'account', 'active', NOW(), '', 10, 'favorites-listings.html', 'listings.php?view=favorites', '', '', '', '0', '0', 'listings'),
(NULL, 'edit_account', 'account', 'active', NOW(), '', 11, 'edit-account.php', 'edit-account.php', '', '', '', '1', '0', 'accounts'),
(NULL, 'accounts', 'main', 'active', NOW(), '', 1.1, 'accounts/', 'accounts.php', '', '', '', '0', '0', 'accounts'),
(NULL, 'account_login', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'accounts'),
(NULL, 'account_logout', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'accounts'),
(NULL, 'payment_canceled', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'payment_complete', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'purchase', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'purchase_complete', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'account_register', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '0', 'accounts'),
(NULL, 'thank', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'view_listing', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'edit_listing', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'listings'),
(NULL, 'account_password_forgot', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'accounts'),
(NULL, 'error', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'pages'),
(NULL, 'confirm', '', 'active', NOW(), '', 0, '', '', '', '', '', '0', '1', 'pages');
