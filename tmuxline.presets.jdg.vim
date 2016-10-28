fun! tmuxline#presets#jdg#get()
  let bar = tmuxline#new()

  call bar.left.add('a', '#S')
  call bar.left.add_left_sep()

  call bar.right.add_right_sep()
  call bar.right.add('x', ' %a ')
  call bar.right.add_right_sep()
  call bar.right.add('y', ' %b %d %Y ')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', ' #(date +"%r") ')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', ' #(/Users/jart/Desktop/developer/Bash-Stuff/tmux-battery/tmux-battery) ')
  call bar.right.add_right_sep()

  call bar.right.add('z', '#h')

  call bar.win.add('win.dim', '#I')
  call bar.win.add_left_alt_sep()
  call bar.win.add('win', '#W')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin.dim', '#I')
  call bar.cwin.add_left_alt_sep()
  call bar.cwin.add('cwin', '#W')
  call bar.cwin.add_left_sep()

  let bar.options['status-justify'] = 'left'
  let bar.win_options['window-status-activity-attr'] = 'none'

  return bar
endfun

