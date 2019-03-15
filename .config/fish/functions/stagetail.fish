# Defined in - @ line 1
function stagetail --description 'alias stagetail=ssh staging tail -f /usr/local/www/apps/logs/error_log'
	ssh staging tail -f /usr/local/www/apps/logs/error_log $argv;
end
