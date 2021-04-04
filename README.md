# Dynamic DNS client

Uses [ddclient](https://ddclient.net/) to set a dynamic DNS record for Namecheap.
See [this article](https://www.namecheap.com/support/knowledgebase/article.aspx/583/11/how-do-i-configure-ddclient/) 
for choosing the config options.


Username and password must be provided as environment variables:
 - username var: `ddclient_user`
 - password var: `ddclient_pass`