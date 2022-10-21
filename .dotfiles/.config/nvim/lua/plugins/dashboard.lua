local db = require('dashboard')

db.default_executive = 'telescope'
db.custom_header = {
  
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

db.custom_center = {
  { icon = '  ', desc = 'Find File', action = 'Telescope find_files' },
  { icon = '  ', desc = 'Recently Used Files', action = 'Telescope oldfiles' },
  { icon = '  ', desc = 'Find Word', action = 'Telescope live_grep' },
  { icon = '  ', desc = 'Load Last Session', action = 'SessionLoad' },
  { icon = '  ', desc = 'Settings', action = ':e ~/.config/nvim/init.lua' },
  { icon = '  ', desc = 'Quit', action = 'qa!' },
}

