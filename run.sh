#!/usr/bin/env sh

if [ -z "${ddclient_user}" ];
then
  echo "Missing username"
  exit 1
fi

if [ -z "${ddclient_pass}" ];
then
  echo "Missing password"
  exit 1
fi

sed -i "s/pass_here/${ddclient_pass}/" /etc/ddclient/ddclient.conf
sed -i "s/user_here/${ddclient_user}/" /etc/ddclient/ddclient.conf

ddclient