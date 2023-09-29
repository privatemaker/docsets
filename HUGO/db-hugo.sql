
CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Installation', 'Guide', 'gohugo.io/installation/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Content Management', 'Guide', 'gohugo.io/content-management/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Templates', 'Guide', 'gohugo.io/templates/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Functions', 'Function', 'gohugo.io/functions/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Variables', 'Variable', 'gohugo.io/variables/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Site Variables', 'Variable', 'gohugo.io/variables/site/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Page Variables', 'Variable', 'gohugo.io/variables/page/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Shortcode Variables', 'Variable', 'gohugo.io/variables/shortcodes/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Pages Variables', 'Variable', 'gohugo.io/variables/pages/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Taxonomy Variables', 'Variable', 'gohugo.io/variables/taxonomy/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('File Variables', 'Variable', 'gohugo.io/variables/files/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Menu Variables', 'Variable', 'gohugo.io/variables/menus/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Git Variables', 'Variable', 'gohugo.io/variables/git/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Hugo Pipes', 'Resource', 'gohugo.io/hugo-pipes/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('CLI', 'Command', 'gohugo.io/commands/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Troubleshooting', 'Guide', 'gohugo.io/troubleshooting/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Developer Tools', 'Guide', 'gohugo.io/tools/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Hosting Deployment', 'Guide', 'gohugo.io/hosting-and-deployment/');

INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('About Hugo', 'Section', 'gohugo.io/about/');
INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('Contribute', 'Section', 'gohugo.io/contribute/');
