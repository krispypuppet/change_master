# change_master

This module consists of a task to manipulate the "server" and "sever_list" settings in an agent's puppet.conf file.

## Task

The `change_master` task updates an agent's puppet.conf file to remove the "server" setting in the [main] section and set the "server_list" setting in the [agent] section.  For example, provided you've got SSH keys, host keys, bolt in your command path, and this module installed into your modulepath, changing the values by running the command:

    bolt task run change_master server_list=master1.mycompany.com.replica1.mycompany.com \
      --nodes ssh://nodea,ssh://nodeb

For more information on Bolt's configuration and command-line options, refer to [the Bolt online documentation](https://puppet.com/docs/bolt/0.x/bolt.html).

This task will also become available in the Puppet Enterprise console, as soon as you install the module into your production environment. When selected to run, the "server_list" will be displayed as a required parameter.

