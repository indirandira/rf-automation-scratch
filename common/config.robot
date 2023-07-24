*** Variables ***
#########################
# General Configuration #
#########################
${environment}                staging              #possible values: {dev|staging|sandbox|prod}
${alias}                      service_name
&{headers}                    Accept=application/json     x-app-debug=true     Content-Type=application/json
${timeout}                    15


#####################
# Web Configuration #
#####################
# Browser Mode: Using Browserstack or Selenium
# Option:
# - browserstack
# - selenium
${browser_mode}               selenium

# Browser: will run if you choose browser_mode = selenium
# Option:
# - chrome
# - headlesschrome
# - firefox
# - headlessfirefox
${browser}                    headlesschrome

# Browser Options
## headlesschrome: currently only options passed
&{headlesschrome}             options=add_argument("--window-size=1366,768");add_argument("--disable-extensions");add_argument("--disable-gpu");add_argument("--disable-dev-shm-usage");add_argument('--no-sandbox')

## headlessfirefox: currently only options passed
## You might need to set these environment variables:
## - MOZ_HEADLESS_WIDTH 
## - MOZ_HEADLESS_HEIGHT
&{headlessfirefox}            options=add_argument("--width=1366");add_argument("--height=768")

# Screenshot directory
${ss_dir}                     ${EXECDIR}/result

# Browserstack Config: will run if you choose browser_mode = browserstack
# Read more:
# - https://www.browserstack.com/local-testing/automate
&{browserstack_config}        type=static         # possible values: static OR random
...                           browser=Firefox
...                           browser_version=latest
...                           os=Windows
...                           os_version=10
...                           local=true
...                           networkLogs=true
...                           resolution=1366x768
...                           selenium_version=3.141.0
...                           debug=true
...                           console=verbose
...                           use_w3c=false
...                           timezone=Jakarta

# Browserstack_fallback: option when browserstack is occupied
# Option:
# - selenium (will check ${browser})
# - none (will throw exception)
${browserstack_fallback}      selenium
