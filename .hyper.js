// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"JetBrains Mono","Operator Mono Lig", "Operator Mono", "Victor Mono","Fira Code", "FiraCode-Retina", "FiraCode", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    // fontFamily: '"Ligalex Mono","JetBrains Mono","Operator Mono Lig", "Operator Mono", "Victor Mono","Fira Code", "FiraCode-Retina", "FiraCode", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',
    // lineHeight: "1.3",

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BEAM',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // opacity is only supported on macOS
    // backgroundColor: '#191919',
    backgroundColor: '#28313a',
    backgroundColor: '#181e24',

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    // borderColor: '#ff4a6b',
    borderColor: '#28313a',
    // borderColor: '#212121',
    // custom CSS to embed in the main window
    css: 'font-variant-ligatures: normal; font-family: "JetBrains Mono", "Victor Mono", "Fira Code"',
    wickedBorder: true,
    // custom CSS to embed in the terminal window
    termCSS: `
    xterm-screen xterm-row {
        font-variant-ligatures: normal;
    }

    .xterm-rows div {margin: 15px 0}
    `,

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    // padding: '12px 14px',
    padding: '20px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    // colors: {
    //   black: '#000000',
    //   red: '#C51E14',
    //   green: '#1DC121',
    //   yellow: '#C7C329',
    //   blue: '#0A2FC4',
    //   magenta: '#C839C5',
    //   cyan: '#20C5C6',
    //   white: '#C7C7C7',
    //   lightBlack: '#686868',
    //   lightRed: '#FD6F6B',
    //   lightGreen: '#67F86F',
    //   lightYellow: '#FFFA72',
    //   lightBlue: '#6A76FB',
    //   lightMagenta: '#FD7CFC',
    //   lightCyan: '#68FDFE',
    //   lightWhite: '#FFFFFF'
    // },

    // colors: {
    //   black: '#000000',
    //   red: '#d95468',
    //   green: '#60af73',
    //   yellow: '#f0be72',
    //   blue: '#499bfc',
    //   magenta: '#C839C5',
    //   cyan: '#33ced8',
    //   white: '#C7C7C7',
    //   lightBlack: '#686868',
    //   lightRed: '#FD6F6B',
    //   lightGreen: '#67F86F',
    //   lightYellow: '#FFFA72',
    //   lightBlue: '#6A76FB',
    //   lightMagenta: '#FD7CFC',
    //   lightCyan: '#68FDFE',
    //   lightWhite: '#FFFFFF'
    // },
    colors: {
      black: '#000000',
      red: '#D95468',
      green: '#8BD49C',
      yellow: '#f0be72',
      blue: '#5EC4FF',
      magenta: '#B62D65',
      cyan: '#70E1E8',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#EBBF83',
      lightBlue: '#6A76FB',
      lightMagenta: '#E27E8D',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '/bin/zsh',
    webGLRenderer: false,
    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  // plugins: ["hyperpower"],
  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],
  plugins: [
    'hyper-font-ligatures',
    'hyper-samewd',
    'hyper-pane',
    'hyper-quit',
    "hyper-fading-scrollbar",
    // "hyper-hypest"
  ],
  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
  hypest: { darkmode: true }
};