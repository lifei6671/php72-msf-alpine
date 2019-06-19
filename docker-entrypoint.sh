#!/bin/sh
set -e

if [ ! -z $YAF_ENVIRON ]; then
	sed -i "s#^yaf\.environ=.*#yaf\.environ=${YAF_ENVIRON}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_LIBRARY ]; then
	sed -i "s#^yaf\.library=.*#yaf\.library=${YAF_LIBRARY}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_CACHE_CONFIG ]; then
	sed -i "s#^yaf\.cache_config=.*#yaf\.cache_config=${YAF_CACHE_CONFIG}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_NAME_SUFFIX ]; then
	sed -i "s#^yaf\.name_suffix=.*#yaf\.name_suffix=${YAF_NAME_SUFFIX}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_NAME_SEPARATOR ]; then
	sed -i "s#^yaf\.name_separator=.*#yaf\.name_separator=${YAF_NAME_SEPARATOR}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_FORWARD_LIMIT ]; then
	sed -i "s#^yaf\.forward_limit=.*#yaf\.forward_limit=${YAF_FORWARD_LIMIT}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_USE_NAMESPACE ]; then
	sed -i "s#^yaf\.use_namespace=.*#yaf\.use_namespace=${YAF_USE_NAMESPACE}#g" /usr/local/etc/php/conf.d/yaf.ini
fi
if [ ! -z $YAF_USE_SPL_AUTOLOAD ]; then
	sed -i "s#^yaf\.use_spl_autoload=.*#yaf\.use_spl_autoload=${YAF_USE_SPL_AUTOLOAD}#g" /usr/local/etc/php/conf.d/yaf.ini
fi

SERVERFILE="/mnt/hgfs/msf/server.php"

if [ @ -z $SERVER_FILE ]; then
    SERVERFILE=$SERVER_FILE
fi

php ${SERVERFILE}