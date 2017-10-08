$template_string = @(END)
this node is <%= @hostname %>
parameter is <%= @param1 %>
END

$param1 = 'template test'

file {'/tmp/template_test.txt':
  ensure => file,
  content => inline_template($template_string),
}