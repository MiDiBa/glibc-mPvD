#!/bin/sh

. `dirname $0`/check-nc.sh

{
	echo PVD_CONNECTION_PROMOTE_CONTROL
	echo PVD_BEGIN_TRANSACTION $1
	echo PVD_SET_ATTRIBUTE $1 rdnss '["8.8.8.8"]'
	echo PVD_SET_ATTRIBUTE $1 dnssl '["ulg.ac.be"]'
	echo PVD_END_TRANSACTION $1
} | $NC 0.0.0.0 10101

