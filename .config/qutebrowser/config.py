# Autogenerated config.py
#
# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()
# Or uncomment this line to load settings from config.py
config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://drive.google.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')


config.set('content.blocking.method', 'both')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications.enabled', False, 'https://www.reddit.com')
config.set('content.notifications.enabled', False, 'https://www.youtube.com')

# Directory to save downloads to. If unset, a sensible OS-specific
# default is used.
# Type: Directory
c.downloads.location.directory = '~/Downloads'

# When to show the tab bar and/or statusbar
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'never'
c.statusbar.show = 'never'

c.url.default_page = '~/.config/qutebrowser/new_tab.html'
c.url.start_pages = '~/.config/qutebrowser/new_tab.html'
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}', 're': 'https://www.reddit.com/r/{}', 'yt': 'https://www.youtube.com/results?search_query={}'}

# Colors completion
c.colors.completion.fg = ['#87B0F2', '#abc2ae', 'white']
c.colors.completion.odd.bg = '#191919'
c.colors.completion.even.bg = '#191919'
c.colors.completion.category.fg = '#191919'
c.colors.completion.category.bg = '#478061'
c.colors.completion.category.border.top = '#191919'
c.colors.completion.category.border.bottom = '#191919'
c.colors.completion.item.selected.fg = 'white'
c.colors.completion.item.selected.bg = '#020202'
c.colors.completion.item.selected.border.top = '#478061'
c.colors.completion.item.selected.border.bottom = '#478061'
c.colors.completion.item.selected.match.fg = '#efef60'
c.colors.completion.match.fg = '#efef60'
c.colors.completion.scrollbar.fg = '#478061'

# Colors downloads
c.colors.downloads.bar.bg = '#282c34'
c.colors.downloads.error.bg = '#ff6c6b'

# Colors hints
c.colors.hints.fg = '#282c34'
c.colors.hints.match.fg = '#98be65'

# Colors messages
c.colors.messages.info.bg = '#282c34'

# Colors statusbar
c.colors.statusbar.normal.bg = '#252525'
c.colors.statusbar.normal.fg = '#478061'
c.colors.statusbar.insert.fg = '#020202'
c.colors.statusbar.insert.bg = '#478061'
c.colors.statusbar.passthrough.bg = '#478061'
c.colors.statusbar.command.bg = '#252525'
c.colors.statusbar.command.fg = '#478061'
c.colors.statusbar.url.fg = '#478061'
c.colors.statusbar.url.success.https.fg = '#478061'
c.colors.statusbar.url.success.http.fg = '#478061'
c.colors.statusbar.url.warn.fg = 'yellow'

# Colors tabs
c.colors.tabs.bar.bg = '#252525'
c.colors.tabs.odd.bg = '#252525'
c.colors.tabs.even.bg = '#252525'
c.colors.tabs.odd.fg = '#478061'
c.colors.tabs.even.fg = '#478061'
c.colors.tabs.selected.odd.bg = '#478061'
c.colors.tabs.selected.even.bg = '#478061'
c.colors.tabs.selected.odd.fg = '#020202'
c.colors.tabs.selected.even.fg = '#020202'
c.colors.tabs.pinned.odd.bg = 'seagreen'
c.colors.tabs.pinned.even.bg = 'darkseagreen'
c.colors.tabs.pinned.selected.odd.bg = '#282c34'
c.colors.tabs.pinned.selected.even.bg = '#282c34'

# Fonts
c.fonts.default_family = '"Hack"'
c.fonts.default_size = '9pt'
c.fonts.completion.entry = '9pt "Hack"'
c.fonts.debug_console = '9pt "Hack"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '9pt "Hack"'

# Bindings to use dmenu rather than qutebrowser's builtin search.
#config.bind('o', 'spawn --userscript dmenu-open')
#config.bind('O', 'spawn --userscript dmenu-open --tab')

# Dark Mode
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.darkmode.algorithm", "lightness-cielab")

# Aliases
c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}

# Bindings for normal mode
config.bind(',b', 'spawn dmn_bookadd {url} {title}')
config.bind(',m', 'hint links spawn mpv --ytdl-format=best[height=720] {hint-url}')
config.bind(',z', 'hint links spawn st -e youtube-dl {hint-url}')
config.bind(',d', 'config-cycle colors.webpage.darkmode.enabled False True')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('\c', 'config-source')
config.bind(',sd', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""')
