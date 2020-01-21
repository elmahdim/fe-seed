## Generate SSH keys:

* `ssh-keygen -t rsa -C "email@email.com"`
* Enter file in which to save the key: Press Enter
* Enter passphrase: Press Enter
* Enter same passphrase again: Press Enter

After completing the above steps, the location of your public key is shown in the terminal window. If the currently logged in user is 'bob' the location of your public key would be /home/bob/.ssh/id_rsa.pub

## Copy and import public key to GitHub:

* `pbcopy < ~/.ssh/id_rsa.pub`
* Copy the whole public key that is now displayed in your terminal window to the clipboard
* Go to https://github.com and sign in
* Click the user icon in the top right corner of the screen and select Settings
* Click SSH and GPG keys
* Click New SSH key
* Enter a title, paste the public key copied to the clipboard in the first bullet point, and click Add SSH key


## Confirm the above steps:

* ssh -T git@github.com
* yes
* Hi ! You've successfully authenticated, but GitHub does not provide shell access.
