DELETE FROM `command` WHERE `name` LIKE '%battlenetaccount%';
DELETE FROM `command` WHERE `name` LIKE '%bnetaccount%';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('bnetaccount', 6, 'Syntax: .bnetaccount $subcommand\nType .bnetaccount to see the list of possible subcommands or .help account set $subcommand to see info on subcommands.'),
('bnetaccount create', 6, 'Syntax: .bnetaccount create $account $password\nCreate battle.net account and set password to it. Account must contain the @ symbol.'),
('bnetaccount lock country', 6, 'Syntax: .bnetaccount lock country [on|off]\nAllow login to account only from current used Country or remove this requirement.'),
('bnetaccount lock ip', 6, 'Syntax: .bnetaccount lock ip [on|off]\nAllow login to account only from current used IP or remove this requirement.'),
('bnetaccount password', 6, 'Syntax: .bnetaccount password $old_password $new_password $new_password\nChange your account password.'),
('bnetaccount set', 6, 'Syntax: .bnetaccount set $subcommand\nType .bnetaccount set to see the list of possible subcommands or .help bnetaccount set $subcommand to see info on subcommands.'),
('bnetaccount set password', 6, 'Syntax: .bnetaccount set password $account $password $password\nSet password for account.'),
('bnetaccount link', 6, 'Syntax: .bnetaccount link $email $login\nLinks battle.net account ($email) to an existing game account ($login).'),
('bnetaccount unlink', 6, 'Syntax: .bnetaccount unlink $gameaccount $password\nRemoves battle.net account link from $gameaccount'),
('bnetaccount gameaccountcreate', 6, 'Syntax: .bnetaccount gameaccountcreate $account\nCreate additional game account for specified battle.net account.');

DELETE FROM `trinity_string` WHERE `entry` BETWEEN 1185 AND 1189;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1185, 'Battle.net account %s was linked with game account %s.'),
(1186, 'Battle.net account %s or game account %s does not exist.'),
(1187, 'Game account %s is already linked with a battle.net account.'),
(1188, 'Game account %s had its battle.net account link removed.'),
(1189, 'Game account %s is not linked to any battle.net account.');

DELETE FROM `trinity_string` WHERE `entry` IN (1032, 1033);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1032, 'Battle.net account created: %s with game account %s'),
(1033, 'Battle.net account created: %s');
