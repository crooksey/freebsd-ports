#!/bin/sh
#
# $FreeBSD$
#
# PROVIDE: upclient
# REQUIRE: DAEMON
# KEYWORD: FreeBSD
#
# Add the following line to /etc/rc.conf to enable upclient:
#
# upclient_enable="YES"
#

upclient_precmd ()
{
	ws=" 	"
	grep -qs "^[$ws]*AuthKey[$ws]*=" ${configfile} ||
	err 1 "AuthKey is missing from ${configfile}."
	grep -qs "^[$ws]*AuthKey[$ws]*=[$ws]*your_authkey" ${configfile} &&
	err 1 "AuthKey isn't configured in ${configfile}."

	hn=uptimes.wonko.com
	egrep -qs "^[$ws]*UptimeServer[$ws]*=[$ws]*${hn}[$ws]*" ${configfile} &&
	err 1 "${configfile} needs to be updated from ${samplefile}."

	kw="IdleTime|OS|(OS|CPU)Level"
	egrep -qs "^[$ws]*Send($kw)[$ws]*=" ${configfile} &&
	err 1 "${configfile} needs to be updated from ${samplefile}."

	:
}

upclient_enable="${upclient_enable-NO}"
upclient_flags=

. %%RC_SUBR%%

name=upclient
rcvar=$(set_rcvar)

# private
configfile=%%PREFIX%%/etc/${name}.conf
samplefile=${configfile}.sample

# public
command=%%PREFIX%%/sbin/${name}
pidfile=/var/run/${name}.pid
required_files=${configfile}
start_precmd=${name}_precmd

load_rc_config ${name}
run_rc_command "$1"
