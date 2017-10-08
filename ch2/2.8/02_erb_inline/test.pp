$template_string = @(END)
  this node is <%= @hostname %>
  paramter is <%= @param1 %>
END

$param1 = 'template test'

file {'/tmp/inline_template_test':
  ensure => file,
  content => inline_template($template_string),
}