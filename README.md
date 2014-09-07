ansible-osx-developer
=====================

Provisioning OS X for development using Ansible.

Installation
------------

To override defaults specified in roles/developer/defaults/main.yaml you should pass it to bootstrap.sh script
There are two options how to do it:

1. Inline string "scm_user_name='My Name' scm_user_email='my_email@example.com'"
2. Using file "@/full/path/to/file/with/my/defaults.yaml"

I prefer second one.

Example:

1. Create yaml file with vars you want to override

    ```yaml
    aws_default_profile: "my_default_profile"
    scm_user_name: "My Name"
    scm_user_email: "my_email@example.com"
    scm_github_username: "my_github_username"
    ```

2. Run

    ```sh
    curl -LSs https://raw.githubusercontent.com/pavel-v-chernykh/ansible-osx-developer/master/bootstrap.sh \
        -o /tmp/bootstrap.sh && \
        sh /tmp/bootstrap.sh "@/full/path/to/file/with/my/defaults.yaml"
    ```

Enjoy ;)
