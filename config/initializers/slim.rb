Slim::Engine.set_default_options shortcut: {
  '@' => { attr: %w(data-role role)},
  '#' => { attr: 'id' },
  '.' => { attr: 'class' },
  '&' => { attr: 'type', tag: 'input'},
}
